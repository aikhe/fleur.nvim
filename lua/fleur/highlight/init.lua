local M = {}

M.plugin_maps = {
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
M.detect_plugins = function(config)
  if not config.auto then return config.plugins end

  local plugins = {}

  if package.loaded.lazy then
    local lazy_plugins = require("lazy.core.config").plugins
    for plugin, mapped in pairs(M.plugin_maps) do
      if lazy_plugins[plugin] then plugins[mapped] = true end
    end
    if not plugins.mini then
      for plugin_name, _ in pairs(lazy_plugins) do
        if plugin_name:match "^mini%." then
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
        if plugin.active and M.plugin_maps[plugin.spec.name] then
          plugins[M.plugin_maps[plugin.spec.name]] = true
        end
        if
          not plugins.mini
          and plugin.active
          and plugin.spec.name:match "^mini%."
        then
          plugins.mini = true
        end
      end
    end
  end

  ---@diagnostic disable-next-line: undefined-field
  local mini_deps = _G.MiniDeps
  if mini_deps then
    for _, plugin in ipairs(mini_deps.get_session()) do
      if M.plugin_maps[plugin.name] then
        plugins[M.plugin_maps[plugin.name]] = true
      end
      if not plugins.mini and plugin.name:match "^mini%." then
        plugins.mini = true
      end
    end
  end

  return plugins
end

---@param config FleurConfig
---@param theme FleurTheme
---@return FleurHighlightGroup[]
M.get = function(config, theme)
  local core = {}

  vim.list_extend(core, require "fleur.highlight.lsp"(theme))
  vim.list_extend(core, require "fleur.highlight.base"(theme))
  vim.list_extend(core, require "fleur.highlight.syntax"(theme))
  vim.list_extend(core, require "fleur.highlight.treesitter"(theme))
  vim.list_extend(core, require "fleur.highlight.diagnostic"(theme))
  vim.list_extend(core, require "fleur.highlight.miscs"(theme))

  return {
    {
      dont_skip = true,
      highlight = core,
    },
    require "fleur.plugins.git-signs"(theme),
    require "fleur.plugins.mini"(theme),
    require "fleur.plugins.neo-tree"(theme),
    require "fleur.plugins.oil"(theme),
    require "fleur.plugins.telescope"(theme),
    require "fleur.plugins.which-key"(theme),
    require "fleur.plugins.volt"(theme),
    require "fleur.plugins.nvim-tree"(theme),
  }
end

return M
