local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param _ FleurConfig
---@return FleurHighlightSpec[]
return function(p, _)
  return {
    spec.co("Normal", p.fg, p.bg),
    spec.co("NormalFloat", p.fg, p.gray1),
    spec.fg("FloatBorder", p.border),
    spec.fg("Title", p.hydrangea),
    spec.fg("LineNr", p.gray3),
    spec.fg("CursorLineNr", p.tulip), -- sunflower -> tulip
    spec.bg("CursorLine", p.gray1),
    spec.bg("Visual", p.gray2),
    spec.fg("WinSeparator", p.border),
    spec.co("StatusLine", p.fg, p.gray1),
    spec.co("StatusLineNC", p.gray3, p.gray1),
    spec.co("Pmenu", p.fg, p.gray1),
    spec.co("PmenuSel", p.bg, p.accent),
    spec.fg("PmenuSbar", p.gray2),
    spec.bg("PmenuThumb", p.gray3),
    spec.co("Search", p.bg, p.tulip), -- sunflower -> tulip
    spec.co("IncSearch", p.bg, p.accent),
    spec.fg("MatchParen", p.accent, { bold = true }),
    spec.fg("NonText", p.gray2),
    spec.fg("SpecialKey", p.gray2),
    spec.fg("Directory", p.hydrangea),
    spec.fg("Question", p.stem),
    spec.fg("MoreMsg", p.stem),
    spec.fg("WarningMsg", p.tulip), -- sunflower -> tulip
    spec.fg("ErrorMsg", p.rose),
  }
end
