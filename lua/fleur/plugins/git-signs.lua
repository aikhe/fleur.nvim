local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  return {
    plugin_name = "git_signs",
    highlight = {
      hl.fg("GitSignsAdd", theme.diff.info),
      hl.fg("GitSignsChange", theme.diff.change),
      hl.fg("GitSignsDelete", theme.diff.delete),
    },
  }
end
