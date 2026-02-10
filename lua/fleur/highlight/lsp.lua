local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
local lsp = function(theme)
  local p = theme.p
  return {
    hl.bg("LspReferenceText", p.gray2),
    hl.bg("LspReferenceRead", p.gray2),
    hl.bg("LspReferenceWrite", p.gray2),
    hl.fg("LspSignatureActiveParameter", p.lily, { bold = true }),
  }
end

return lsp
