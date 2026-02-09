local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  local p = theme.p
  return {
    plugin_name = "mini",
    highlight = {
      hl.fg("MiniIconsBlue", p.hydrangea),
      hl.fg("MiniIconsCyan", p.dahlia),
      hl.fg("MiniIconsGray", p.gray5),
      hl.fg("MiniIconsGreen", p.stem),
      hl.fg("MiniIconsOrange", p.tulip),
      hl.fg("MiniIconsRed", p.rose),
      hl.fg("MiniIconsWhite", p.gray8),
      hl.fg("MiniIconsYellow", p.tulip),
    },
  }
end
