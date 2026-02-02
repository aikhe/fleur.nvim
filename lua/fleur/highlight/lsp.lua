local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@return FleurHighlightSpec[]
local lsp = function(p)
  return {
    -- diagnostics
    spec.fg("DiagnosticError", p.rose),
    spec.fg("DiagnosticWarn", p.gray5),
    spec.fg("DiagnosticInfo", p.hydrangea),
    spec.fg("DiagnosticHint", p.dahlia),

    -- underlines
    spec.op("DiagnosticUnderlineError", { undercurl = true, sp = p.rose }),
    spec.op("DiagnosticUnderlineWarn", { undercurl = true, sp = p.tulip }),
    spec.op("DiagnosticUnderlineInfo", { undercurl = true, sp = p.hydrangea }),
    spec.op("DiagnosticUnderlineHint", { undercurl = true, sp = p.dahlia }),

    -- virtual text
    spec.fg("DiagnosticVirtualTextError", p.rose),
    spec.fg("DiagnosticVirtualTextWarn", p.gray5),
    spec.fg("DiagnosticVirtualTextInfo", p.hydrangea),
    spec.fg("DiagnosticVirtualTextHint", p.dahlia),

    -- references
    spec.bg("LspReferenceText", p.gray2),
    spec.bg("LspReferenceRead", p.gray2),
    spec.bg("LspReferenceWrite", p.gray2),

    -- signature help
    spec.fg("LspSignatureActiveParameter", p.accent, { bold = true }),
  }
end

return lsp
