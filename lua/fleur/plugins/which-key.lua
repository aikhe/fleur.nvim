local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
local which_key = function(theme)
  local p = theme.p
  return {
    plugin_name = "which_key",
    highlight = {
      hl.co("WhichKey", p.gray8, p.gray2),
      hl.fg("WhichKeyGroup", p.gray5),
      hl.fg("WhichKeyDesc", p.gray6),
      hl.fg("WhichKeySeparator", p.gray4),
    },
  }
end

return which_key
