local M = {}

---@param p FleurPalette
---@param config FleurConfig
---@param theme FleurTheme
---@return FleurHighlightSpec[]
M.get = function(p, config, theme)
  local groups = {}

  vim.list_extend(groups, require "fleur.highlight.lsp"(p))
  vim.list_extend(groups, require "fleur.highlight.base"(p, config))
  vim.list_extend(groups, require "fleur.highlight.syntax"(p, config, theme))
  vim.list_extend(
    groups,
    require "fleur.highlight.treesitter"(p, config, theme)
  )

  return groups
end

return M
