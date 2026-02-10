local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
local diagnostic = function(theme)
  return {
    hl.fg("DiagnosticVirtualTextOk", theme.diagnostic.ok),
    hl.fg("DiagnosticVirtualTextHint", theme.diagnostic.hint),
    hl.fg("DiagnosticVirtualTextInfo", theme.diagnostic.info),
    hl.fg("DiagnosticVirtualTextWarn", theme.diagnostic.warn),
    hl.fg("DiagnosticVirtualTextError", theme.diagnostic.error),

    hl.fg("DiagnosticSignOk", theme.diagnostic.ok),
    hl.fg("DiagnosticSignInfo", theme.diagnostic.info),
    hl.fg("DiagnosticSignHint", theme.diagnostic.hint),
    hl.fg("DiagnosticSignWarn", theme.diagnostic.warn),
    hl.fg("DiagnosticSignError", theme.diagnostic.error),
    hl.fg("DiagnosticSignDeprecated", theme.diagnostic.deprecated),

    hl.fg("DiagnosticFloatingOk", theme.diagnostic.ok),
    hl.fg("DiagnosticFloatingInfo", theme.diagnostic.info),
    hl.fg("DiagnosticFloatingHint", theme.diagnostic.hint),
    hl.fg("DiagnosticFloatingWarn", theme.diagnostic.warn),
    hl.fg("DiagnosticFloatingError", theme.diagnostic.error),

    hl.op("DiagnosticUnderlineWarn", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.warn,
    }),
    hl.op("DiagnosticUnderlineInfo", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.info,
    }),
    hl.op("DiagnosticUnderlineHint", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.hint,
    }),
    hl.op("DiagnosticUnderlineError", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.error,
    }),
  }
end

return diagnostic
