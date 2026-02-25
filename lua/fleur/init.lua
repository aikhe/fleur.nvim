local highlights = require "fleur.highlight"

local M = {}
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

  local cache_key = mode
  local cache_config = {
    palette = p,
    plugins = highlights.detect_plugins(config),
    styles = config.styles,
    transparent = config.transparent,
  }

  local cache = config.cache and require("fleur.utils").cache.read(cache_key)
  local hl_map = {}
  local groups = {}

  if cache and vim.deep_equal(cache_config, cache.config) then
    groups = cache.highlights
  else
    local highlight_groups = highlights.get(config, theme)

    for _, group in ipairs(highlight_groups) do
      if
        group.dont_skip
        or (group.plugin_name and cache_config.plugins[group.plugin_name])
      then
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
