local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@return FleurHighlightSpec[]
return function(p)
  return {
    spec.fg("TelescopeBorder", p.border),
    spec.fg("TelescopePromptBorder", p.hydrangea),
    spec.fg("TelescopeResultsTitle", p.hydrangea),
    spec.fg("TelescopePromptTitle", p.hydrangea),
    spec.fg("TelescopePreviewTitle", p.hydrangea),
    spec.co("TelescopeSelection", p.fg, p.gray2), -- pebble -> gray2
    spec.fg("TelescopeMatching", p.accent, { bold = true }),
    spec.fg("TelescopePromptPrefix", p.accent),
  }
end
