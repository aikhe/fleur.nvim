local spec = require "fleur.highlight.spec"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  local p = theme.p
  return {
    plugin_name = "neo_tree",
    highlight = {
      spec.bg("NeoTreeCursorLine", p.gray4),
      spec.co("NeoTreeFloatBorder", p.gray4, p.black),
      -- spec.bg("NeoTreeFloatNormal", p.gray1),
      -- spec.bg("NeoTreeNormal", p.gray1),
      -- spec.bg("NeoTreeTabInactive", p.gray2),
      -- spec.bg("NeoTreeTabSeperatorInactive", p.gray1),
      spec.fg("NeoTreeDirectoryIcon", p.gray5),
      spec.fg("NeoTreeDirectoryName", p.gray5),
      spec.fg("NeoTreeRootName", p.gray9, { bold = true }),
      spec.fg("NeoTreeFileName", p.gray9),
      spec.fg("NeoTreeFileIcon", p.lily),
      spec.fg("NeoTreeFileNameOpened", p.fg, { italic = true }),
      spec.fg("NeoTreeIndentMarker", p.gray4),
      spec.fg("NeoTreeGitAdded", theme.diff.add),
      spec.fg("NeoTreeGitConflict", theme.diff.delete),
      spec.fg("NeoTreeGitDeleted", theme.diff.delete),
      spec.fg("NeoTreeGitIgnored", p.gray4),
      spec.fg("NeoTreeGitModified", p.gray6),
      spec.fg("NeoTreeGitUnstaged", theme.diff.change),
      spec.fg("NeoTreeGitUntracked", theme.diff.change, { italic = true }),
      spec.fg("NeoTreeGitStaged", theme.diff.add),
    },
  }
end
