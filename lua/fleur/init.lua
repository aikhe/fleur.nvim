local M = {}

-- plugin name mapping for auto-detection
local plugin_maps = {
  ["gitsigns.nvim"] = "git_signs",
  ["mini.nvim"] = "mini",
  ["neo-tree.nvim"] = "neo_tree",
  ["oil.nvim"] = "oil",
  ["telescope.nvim"] = "telescope",
  ["which-key.nvim"] = "which_key",
  ["volt"] = "volt",
  ["nvim-tree.lua"] = "nvim_tree",
}

---@param config FleurConfig
---@return table<string, boolean>
local detect_plugins = function(config)
  if not config.auto then return config.plugins end

  local plugins = {}

  if package.loaded.lazy then
    local lazy_plugins = require("lazy.core.config").plugins
    for plugin, mapped in pairs(plugin_maps) do
      if lazy_plugins[plugin] then plugins[mapped] = true end
    end
    if not plugins.mini then
      for name, _ in pairs(lazy_plugins) do
        if name:match "^mini%." then
          plugins.mini = true
          break
        end
      end
    end
  end

  if vim.pack then
    local ok, packdata = pcall(vim.pack.get, nil, { info = false })
    if ok and packdata then
      for _, plugin in ipairs(packdata) do
        if plugin.active and plugin_maps[plugin.spec.name] then
          plugins[plugin_maps[plugin.spec.name]] = true
        end
        if not plugins.mini and plugin.active and plugin.spec.name:match "^mini%." then
          plugins.mini = true
        end
      end
    end
  end

  ---@diagnostic disable-next-line: undefined-field
  local mini_deps = _G.MiniDeps
  if mini_deps then
    for _, plugin in ipairs(mini_deps.get_session()) do
      if plugin_maps[plugin.name] then
        plugins[plugin_maps[plugin.name]] = true
      end
      if not plugins.mini and plugin.name:match "^mini%." then
        plugins.mini = true
      end
    end
  end

  return plugins
end

---@param groups FleurHighlight[]
local apply_highlights = function(groups)
  for _, hl in ipairs(groups) do
    local name = hl.name
    hl.name = nil
    vim.api.nvim_set_hl(0, name, hl --[[@as vim.api.keyset.highlight]])
  end
end

---@param opt table
---@param theme FleurTheme
local load_variant = function(opt, theme)
  theme.syntax = theme.syntax_default
  if opt.theme == "lisianthus" then theme.syntax = theme.syntax_lisianthus end
  if opt.theme == "lulumi" then theme.syntax = theme.syntax_lulumi end
  theme.syntax = vim.tbl_extend("force", theme.syntax, theme.syntax_tweak)
end

M.setup = function(opts)
  require("fleur.config").setup(opts)

  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function()
      if vim.g.colors_name == "fleur" then vim.cmd "colorscheme fleur" end
    end,
  })

  vim.api.nvim_create_user_command(
    "FleurReload",
    function() require("fleur.utils").reload() end,
    {}
  )
  vim.api.nvim_create_user_command(
    "FleurClearCache",
    function() require("fleur.utils").cache.clear() end,
    {}
  )
end

M.load = function(opts)
  opts = opts or {}

  local config = require("fleur.config").options

  if vim.tbl_isempty(config) then
    M.setup()
    config = require("fleur.config").options
  end

  local mode = opts.mode or vim.o.background
  local palette = require("fleur.palette." .. mode)
  local theme = require "fleur.palette"(palette)
  load_variant(opts, theme)

  -- apply transparency + user color overrides
  local p = vim.tbl_deep_extend("force", {}, palette)
  if config.transparent then
    p.bg = "NONE"
    p.line = "NONE"
  end
  config.on_colors(p)
  theme.p = p

  vim.cmd "hi clear"
  vim.o.termguicolors = true
  vim.g.colors_name = "fleur"
  vim.o.background = mode

  local detected = detect_plugins(config)
  local cache_key = mode
  local cache_config = {
    palette = p,
    plugins = detected,
    styles = config.styles,
    transparent = config.transparent,
  }

  local cache = config.cache and require("fleur.utils").cache.read(cache_key)
  local hl_map = {}
  local groups = {}

  if cache and vim.deep_equal(cache_config, cache.config) then
    groups = cache.highlights
  else
    -- core highlights
    vim.list_extend(groups, require "fleur.highlights"(theme))

    -- plugin highlights
    for _, group in ipairs(require "fleur.plugins"(theme)) do
      if group.plugin_name and detected[group.plugin_name] then
        vim.list_extend(groups, group.highlight)
      end
    end

    if config.cache then
      require("fleur.utils").cache.write(
        cache_key,
        { config = cache_config, highlights = groups }
      )
    end
  end

  for _, hl in ipairs(groups) do
    hl_map[hl.name] = hl
  end
  config.on_highlights(hl_map, p)

  apply_highlights(groups)
end

return M
