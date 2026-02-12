local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  local p = theme.p
  return {
    plugin_name = "neo_tree",
    highlight = {
      hl.bg("NeoTreeCursorLine", p.gray2),
      hl.co("NeoTreeFloatTitle", p.gray5, p.black),
      hl.co("NeoTreeFloatBorder", p.gray3, p.black),
      hl.fg("NeoTreeDirectoryIcon", p.gray5),
      hl.fg("NeoTreeDirectoryName", p.gray6, { bold = true }),
      hl.fg("NeoTreeRootName", p.gray9),
      hl.fg("NeoTreeFileName", p.gray8),
      hl.fg("NeoTreeFileIcon", p.lis),
      hl.fg("NeoTreeFileNameOpened", p.gray8, { italic = true }),
      hl.fg("NeoTreeIndentMarker", p.gray4),
      hl.fg("NeoTreeGitAdded", theme.diff.add),
      hl.fg("NeoTreeGitConflict", theme.diff.delete),
      hl.fg("NeoTreeGitDeleted", theme.diff.delete),
      hl.fg("NeoTreeGitIgnored", p.gray4),
      hl.fg("NeoTreeGitModified", p.zinnia, { italic = true }),
      hl.fg("NeoTreeGitUnstaged", theme.diff.change),
      hl.fg("NeoTreeGitUntracked", theme.diff.info, { italic = true }),
      hl.fg("NeoTreeGitStaged", theme.diff.add),
    },
  }
end
