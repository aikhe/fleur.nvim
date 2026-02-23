local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
local wrapped = function(theme)
  -- TODO: only load installed plugins for optimization
  pcall(require, "volt.highlights")

  local p = theme.p
  return {
    plugin_name = "volt",
    highlight = {
      hl.fg("ExRed", p.coquelicot),
      hl.fg("ExGreen", p.bruyere),
      hl.fg("ExBlue", p.bleuet),
      hl.fg("ExYellow", p.zinnia),
    },
  }
end

return wrapped
