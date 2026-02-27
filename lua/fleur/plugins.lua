local spec = require "fleur.spec"

-- plugin highlight groups, each keyed by plugin_name for auto-detection

---@param theme FleurTheme
---@return FleurHighlightGroup[]
return function(theme)
  local p = theme.p
  local ui = theme.ui

  return {
    -- gitsigns
    {
      plugin_name = "git_signs",
      highlight = {
        spec.fg("GitSignsAdd", theme.diff.info),
        spec.fg("GitSignsChange", theme.diff.change),
        spec.fg("GitSignsDelete", theme.diff.delete),
      },
    },

    -- mini
    {
      plugin_name = "mini",
      highlight = {
        spec.fg("MiniIconsBlue", p.anemone),
        spec.fg("MiniIconsCyan", p.bleuet),
        spec.fg("MiniIconsGray", p.gray5),
        spec.fg("MiniIconsGreen", p.bruyere),
        spec.fg("MiniIconsOrange", p.zinnia),
        spec.fg("MiniIconsRed", p.coquelicot),
        spec.fg("MiniIconsWhite", p.gray8),
        spec.fg("MiniIconsYellow", p.zinnia),
      },
    },

    -- neo-tree
    {
      plugin_name = "neo_tree",
      highlight = {
        spec.bg("NeoTreeCursorLine", p.gray2),
        spec.co("NeoTreeFloatTitle", p.gray5, p.black),
        spec.co("NeoTreeFloatBorder", p.gray3, p.black),
        spec.fg("NeoTreeDirectoryIcon", p.gray5),
        spec.fg("NeoTreeDirectoryName", p.gray6, { bold = true }),
        spec.fg("NeoTreeRootName", p.gray9),
        spec.fg("NeoTreeFileName", p.gray8),
        spec.fg("NeoTreeFileIcon", p.lis),
        spec.fg("NeoTreeFileNameOpened", p.gray8, { italic = true }),
        spec.fg("NeoTreeIndentMarker", p.gray4),
        spec.fg("NeoTreeGitAdded", theme.diff.add),
        spec.fg("NeoTreeGitConflict", theme.diff.delete),
        spec.fg("NeoTreeGitDeleted", theme.diff.delete),
        spec.fg("NeoTreeGitIgnored", p.gray4),
        spec.fg("NeoTreeGitModified", p.zinnia, { italic = true }),
        spec.fg("NeoTreeGitUnstaged", theme.diff.change),
        spec.fg("NeoTreeGitUntracked", theme.diff.info, { italic = true }),
        spec.fg("NeoTreeGitStaged", theme.diff.add),
      },
    },

    -- nvim-tree
    {
      plugin_name = "nvim_tree",
      highlight = {
        spec.fg("NvimTreeNormal", p.gray8),
        spec.fg("NvimTreeNormalNC", p.gray8),
        spec.fg("NvimTreeRootFolder", p.gray9, { bold = true }),
        spec.fg("NvimTreeFolderIcon", p.gray5),
        spec.fg("NvimTreeFolderName", p.gray6, { bold = true }),
        spec.fg("NvimTreeEmptyFolderName", p.gray5),
        spec.fg("NvimTreeOpenedFolderName", p.gray6, { bold = true }),
        spec.fg("NvimTreeIndentMarker", p.gray4),
        spec.fg("NvimTreeVertSplit", p.black),
        spec.bg("NvimTreeCursorLine", p.gray2),
        spec.fg("NvimTreeExecFile", theme.diff.add),
        spec.fg("NvimTreeSymlink", theme.diff.info),
        spec.fg("NvimTreeSymlinkIcon", theme.diff.info),
        spec.fg("NvimTreeSpecialFile", theme.diff.delete),
        spec.fg("NvimTreeImageFile", p.lis),
        spec.fg("NvimTreeGitDirty", p.zinnia, { italic = true }),
        spec.fg("NvimTreeGitStaged", theme.diff.add),
        spec.fg("NvimTreeGitMerge", theme.diff.change),
        spec.fg("NvimTreeGitRenamed", theme.diff.change),
        spec.fg("NvimTreeGitNew", theme.diff.add),
        spec.fg("NvimTreeGitDeleted", theme.diff.delete),
        spec.fg("NvimTreeDiagnosticError", theme.diagnostic.error),
        spec.fg("NvimTreeDiagnosticWarn", theme.diagnostic.warn),
        spec.fg("NvimTreeDiagnosticInfo", theme.diagnostic.info),
        spec.fg("NvimTreeDiagnosticHint", theme.diagnostic.hint),
        spec.fg("NvimTreeWindowPicker", p.black, { bg = p.lis, bold = true }),
      },
    },

    -- oil
    {
      plugin_name = "oil",
      highlight = {
        spec.fg("Directory", theme.fs.dir),
        spec.fg("OilFile", theme.fs.file),
        spec.fg("OilDir", theme.fs.dir),
        spec.fg("OilDirIcon", theme.fs.dir),
        spec.fg("OilLink", theme.fs.link),
        spec.ln("OilLinkTarget", "OilLink"),
        spec.fg("OilSocket", theme.fs.socket),
        spec.fg("OilCreate", theme.diff.add),
        spec.fg("OilCopy", theme.diff.add),
        spec.fg("OilRestore", theme.diff.add),
        spec.fg("OilDelete", theme.diff.delete),
        spec.fg("OilPurge", theme.diff.delete),
        spec.fg("OilTrash", theme.diff.delete),
        spec.fg("OilTrashSourcePath", theme.diff.delete),
        spec.fg("OilMove", theme.diff.change),
        spec.fg("OilChange", theme.diff.change),
        spec.co("WinBar", ui.fg_line_num_cur, ui.bg_normal),
        spec.co("WinBarNC", ui.fg_line_num_cur, ui.bg_normal),
      },
    },

    -- telescope
    {
      plugin_name = "telescope",
      highlight = {
        spec.co("TelescopeNormal", ui.fg_normal, ui.bg_normal),
        spec.co("TelescopeBorder", ui.fg_border, ui.bg_normal),
        spec.ln("TelescopePromptBorder", "TelescopeBorder"),
        spec.ln("TelescopeResultsBorder", "TelescopeBorder"),
        spec.ln("TelescopePreviewBorder", "TelescopeBorder"),

        spec.op("TelescopeMatching", { italic = true }),
        spec.co("TelescopeSelection", ui.fg_normal, p.gray3),
        spec.co("TelescopePreviewLine", p.black, p.gray9),
        spec.ln("TelescopePreviewMatch", "TelescopePreviewLine"),

        spec.fg("TelescopeTitle", ui.fg_border),
        spec.ln("TelescopePromptTitle", "TelescopeTitle"),
        spec.ln("TelescopeResultsTitle", "TelescopeTitle"),
        spec.ln("TelescopePreviewTitle", "TelescopeTitle"),
        spec.ln("TelescopeMultiSelection", "TelescopeTitle"),
        spec.ln("TelescopeMultiIcon", "TelescopeTitle"),

        spec.ln("TelescopePromptPrefix", "TelescopeTitle"),
        spec.fg("TelescopePromptCounter", p.gray7),

        spec.co("TelescopeResultsNormal", p.gray6, ui.bg_normal),
        spec.ln("TelescopeResultsSpecialComment", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsDiffUntracked", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsIdentifier", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsDiffDelete", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsDiffChange", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsVariable", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsOperator", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsFunction", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsConstant", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsDiffAdd", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsComment", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsSymbol", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsStruct", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsNumber", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsMethod", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsLineNr", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsField", "TelescopeResultsNormal"),
        spec.ln("TelescopeResultsClass", "TelescopeResultsNormal"),
      },
    },

    -- which-key
    {
      plugin_name = "which_key",
      highlight = {
        spec.co("WhichKey", p.gray8, p.gray2),
        spec.fg("WhichKeyGroup", p.gray5),
        spec.fg("WhichKeyDesc", p.gray6),
        spec.fg("WhichKeySeparator", p.gray4),
      },
    },

    -- volt
    {
      plugin_name = "volt",
      highlight = {
        spec.fg("ExRed", p.coquelicot),
        spec.fg("ExGreen", p.bruyere),
        spec.fg("ExBlue", p.bleuet),
        spec.fg("ExYellow", p.zinnia),
      },
    },
  }
end
