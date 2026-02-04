local spec = require "fleur.highlight.spec"

---@param theme FleurTheme
---@return FleurHighlightGroup
local which_key = function(theme)
  local wk = theme.plugin_which_key
  return {
    plugin_name = "which_key",
    highlight = {
      spec.co("WhichKey", wk.key, wk.bg),
      spec.fg("WhichKeyGroup", wk.group),
      spec.fg("WhichKeyDesc", wk.desc),
      spec.fg("WhichKeySeparator", wk.separator),
    },
  }
end

return which_key
