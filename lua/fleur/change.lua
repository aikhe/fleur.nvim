local M = {}

---@param palette FleurPalette
---@param config FleurConfig
---@return FleurPalette
function M.apply(palette, config)
  local p = vim.tbl_deep_extend("force", {}, palette)

  if config.transparent then
    p.bg = "NONE"
    p.line = "NONE"
  end

  config.on_colors(p)

  return p
end

return M
