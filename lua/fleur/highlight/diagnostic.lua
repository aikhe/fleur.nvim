local spec = require "fleur.highlight.spec"
local u = require "fleur.utils"

---@param theme FleurTheme
---@return FleurHighlightSpec[]
local diagnostic = function(theme)
  return {
    -- DIAGNOSTICS
    spec.fg("DiagnosticOk", theme.diagnostic.text),
    spec.fg("DiagnosticHint", theme.diagnostic.text),
    spec.fg("DiagnosticInfo", theme.diagnostic.text),
    spec.fg("DiagnosticWarn", theme.diagnostic.text),
    spec.fg("DiagnosticError", theme.diagnostic.error),
    spec.fg("DiagnosticDeprecated", theme.diagnostic.text),
    spec.fg("DiagnosticUnnecessary", theme.diagnostic.text),

    spec.fg("DiagnosticVirtualTextOk", theme.diagnostic.text),
    spec.fg("DiagnosticVirtualTextHint", theme.diagnostic.text),
    spec.fg("DiagnosticVirtualTextInfo", theme.diagnostic.text),
    spec.fg("DiagnosticVirtualTextWarn", theme.diagnostic.text),
    spec.fg("DiagnosticVirtualTextError", theme.diagnostic.error),

    spec.fg("DiagnosticSignOk", theme.diagnostic.ok),
    spec.fg("DiagnosticSignInfo", theme.diagnostic.info),
    spec.fg("DiagnosticSignHint", theme.diagnostic.hint),
    spec.fg("DiagnosticSignWarn", theme.diagnostic.warn),
    spec.fg("DiagnosticSignError", theme.diagnostic.error),
    spec.fg("DiagnosticSignDeprecated", theme.diagnostic.deprecated),

    spec.op("DiagnosticUnderlineWarn", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.warn,
    }),
    spec.op("DiagnosticUnderlineInfo", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.info,
    }),
    spec.op("DiagnosticUnderlineHint", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.hint,
    }),
    spec.op("DiagnosticUnderlineError", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.error,
    }),
  }
end

return diagnostic
