local spec = require "fleur.highlight.spec"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  return {
    plugin_name = "git_signs",
    highlight = {
      spec.fg("GitSignsAdd", theme.diff.info),
      spec.fg("GitSignsChange", theme.diff.change),
      spec.fg("GitSignsDelete", theme.diff.delete),
    },
  }
end
