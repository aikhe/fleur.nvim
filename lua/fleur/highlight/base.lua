local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param _ FleurConfig
---@return FleurHighlightSpec[]
local base = function(p, _)
  return {
    spec.co("Normal", p.gray8, p.black),
    spec.co("NormalFloat", p.fg, p.gray1),
    spec.fg("FloatBorder", p.border),
    spec.fg("Title", p.hydrangea),
    spec.fg("LineNr", p.gray4),
    spec.fg("CursorLineNr", p.tulip),
    spec.bg("CursorLine", p.gray5),
    spec.bg("Visual", p.gray3),
    spec.fg("WinSeparator", p.border),
    spec.co("StatusLine", p.fg, p.gray1),
    spec.co("StatusLineNC", p.gray3, p.gray1),
    spec.co("Pmenu", p.fg, p.gray1),
    spec.co("PmenuSel", p.bg, p.accent),
    spec.fg("PmenuSbar", p.gray2),
    spec.bg("PmenuThumb", p.gray3),
    spec.co("Search", p.bg, p.gray8),
    spec.co("IncSearch", p.bg, p.gray9),
    spec.fg("MatchParen", p.accent, { bold = true }),
    spec.fg("NonText", p.gray3),
    spec.fg("SpecialKey", p.tulip),
    spec.fg("Directory", p.hydrangea),
    spec.fg("Question", p.stem),
    spec.fg("MoreMsg", p.stem),
    spec.fg("WarningMsg", p.tulip),
    spec.fg("ErrorMsg", p.rose),
  }
end

return base
