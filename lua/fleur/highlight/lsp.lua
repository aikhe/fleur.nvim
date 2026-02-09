local hl = require "fleur.highlight.hl"

---@param p FleurPalette
---@return FleurHighlight[]
local lsp = function(p)
  return {
    -- underlines
    hl.op("DiagnosticUnderlineError", { undercurl = true, sp = p.rose }),
    hl.op("DiagnosticUnderlineWarn", { undercurl = true, sp = p.tulip }),
    hl.op("DiagnosticUnderlineInfo", { undercurl = true, sp = p.hydrangea }),
    hl.op("DiagnosticUnderlineHint", { undercurl = true, sp = p.dahlia }),

    -- references
    hl.bg("LspReferenceText", p.gray2),
    hl.bg("LspReferenceRead", p.gray2),
    hl.bg("LspReferenceWrite", p.gray2),

    -- signature help
    hl.fg("LspSignatureActiveParameter", p.lily, { bold = true }),
  }
end

return lsp
