local M = {}

---@class FleurHighlightGroup
---@field plugin_name? string
---@field dont_skip? boolean
---@field highlight FleurHighlightSpec[]

---@param p FleurPalette
---@param config FleurConfig
---@param theme FleurTheme
---@return FleurHighlightGroup[]
M.get = function(p, config, theme)
  local core = {}

  vim.list_extend(core, require "fleur.highlight.lsp"(p))
  vim.list_extend(core, require "fleur.highlight.base"(p, config))
  vim.list_extend(core, require "fleur.highlight.syntax"(p, config, theme))
  vim.list_extend(core, require "fleur.highlight.treesitter"(p, config, theme))

  return {
    {
      dont_skip = true,
      highlight = core,
    },
    require "fleur.plugins.telescope"(theme),
    require "fleur.plugins.git-signs"(theme),
    require "fleur.plugins.neo-tree"(theme),
  }
end

return M
