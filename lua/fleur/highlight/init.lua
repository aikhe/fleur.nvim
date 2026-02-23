local M = {}

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
  }
end

return M
