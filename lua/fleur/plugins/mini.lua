local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  local p = theme.p
  return {
    plugin_name = "mini",
    highlight = {
      hl.fg("MiniIconsBlue", p.anemone),
      hl.fg("MiniIconsCyan", p.bleuet),
      hl.fg("MiniIconsGray", p.gray5),
      hl.fg("MiniIconsGreen", p.bruyere),
      hl.fg("MiniIconsOrange", p.zinnia),
      hl.fg("MiniIconsRed", p.coquelicot),
      hl.fg("MiniIconsWhite", p.gray8),
      hl.fg("MiniIconsYellow", p.zinnia),
    },
  }
end
