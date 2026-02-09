local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
local which_key = function(theme)
  local wk = theme.plugin_which_key
  return {
    plugin_name = "which_key",
    highlight = {
      hl.co("WhichKey", wk.key, wk.bg),
      hl.fg("WhichKeyGroup", wk.group),
      hl.fg("WhichKeyDesc", wk.desc),
      hl.fg("WhichKeySeparator", wk.separator),
    },
  }
end

return which_key
