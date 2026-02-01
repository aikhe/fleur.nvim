local M = {}

---@param p FleurPalette
---@param config FleurConfig
---@return FleurHighlightSpec[]
function M.get(p, config)
  local groups = {}

  vim.list_extend(groups, require("fleur.highlight.base")(p, config))
  vim.list_extend(groups, require("fleur.highlight.syntax")(p, config))
  vim.list_extend(groups, require("fleur.highlight.treesitter")(p, config))

  if config.plugins.lsp then
    vim.list_extend(groups, require("fleur.highlight.lsp")(p))
  end

  return groups
end

return M
