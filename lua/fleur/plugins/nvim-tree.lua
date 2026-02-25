local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  local p = theme.p
  return {
    plugin_name = "nvim_tree",
    highlight = {
      hl.fg("NvimTreeNormal", p.gray8),
      hl.fg("NvimTreeNormalNC", p.gray8),
      hl.fg("NvimTreeRootFolder", p.gray9, { bold = true }),
      hl.fg("NvimTreeFolderIcon", p.gray5),
      hl.fg("NvimTreeFolderName", p.gray6, { bold = true }),
      hl.fg("NvimTreeEmptyFolderName", p.gray5),
      hl.fg("NvimTreeOpenedFolderName", p.gray6, { bold = true }),
      hl.fg("NvimTreeIndentMarker", p.gray4),
      hl.fg("NvimTreeVertSplit", p.black),
      hl.bg("NvimTreeCursorLine", p.gray2),
      hl.fg("NvimTreeExecFile", theme.diff.add),
      hl.fg("NvimTreeSymlink", theme.diff.info),
      hl.fg("NvimTreeSymlinkIcon", theme.diff.info),
      hl.fg("NvimTreeSpecialFile", theme.diff.delete),
      hl.fg("NvimTreeImageFile", p.lis),
      hl.fg("NvimTreeGitDirty", p.zinnia, { italic = true }),
      hl.fg("NvimTreeGitStaged", theme.diff.add),
      hl.fg("NvimTreeGitMerge", theme.diff.change),
      hl.fg("NvimTreeGitRenamed", theme.diff.change),
      hl.fg("NvimTreeGitNew", theme.diff.add),
      hl.fg("NvimTreeGitDeleted", theme.diff.delete),
      hl.fg("NvimTreeDiagnosticError", theme.diagnostic.error),
      hl.fg("NvimTreeDiagnosticWarn", theme.diagnostic.warn),
      hl.fg("NvimTreeDiagnosticInfo", theme.diagnostic.info),
      hl.fg("NvimTreeDiagnosticHint", theme.diagnostic.hint),
      hl.fg("NvimTreeWindowPicker", p.black, { bg = p.lis, bold = true }),
    },
  }
end
