local hl = require "fleur.hl"

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
        hl.fg("GitSignsAdd", theme.diff.info),
        hl.fg("GitSignsChange", theme.diff.change),
        hl.fg("GitSignsDelete", theme.diff.delete),
      },
    },

    -- mini
    {
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
    },

    -- neo-tree
    {
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
    },

    -- nvim-tree
    {
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
    },

    -- oil
    {
      plugin_name = "oil",
      highlight = {
        hl.fg("Directory", theme.fs.dir),
        hl.fg("OilFile", theme.fs.file),
        hl.fg("OilDir", theme.fs.dir),
        hl.fg("OilDirIcon", theme.fs.dir),
        hl.fg("OilLink", theme.fs.link),
        hl.ln("OilLinkTarget", "OilLink"),
        hl.fg("OilSocket", theme.fs.socket),
        hl.fg("OilCreate", theme.diff.add),
        hl.fg("OilCopy", theme.diff.add),
        hl.fg("OilRestore", theme.diff.add),
        hl.fg("OilDelete", theme.diff.delete),
        hl.fg("OilPurge", theme.diff.delete),
        hl.fg("OilTrash", theme.diff.delete),
        hl.fg("OilTrashSourcePath", theme.diff.delete),
        hl.fg("OilMove", theme.diff.change),
        hl.fg("OilChange", theme.diff.change),
        hl.co("WinBar", ui.fg_line_num_cur, ui.bg_normal),
        hl.co("WinBarNC", ui.fg_line_num_cur, ui.bg_normal),
      },
    },

    -- telescope
    {
      plugin_name = "telescope",
      highlight = {
        hl.co("TelescopeNormal", ui.fg_normal, ui.bg_normal),
        hl.co("TelescopeBorder", ui.fg_border, ui.bg_normal),
        hl.ln("TelescopePromptBorder", "TelescopeBorder"),
        hl.ln("TelescopeResultsBorder", "TelescopeBorder"),
        hl.ln("TelescopePreviewBorder", "TelescopeBorder"),

        hl.op("TelescopeMatching", { italic = true }),
        hl.co("TelescopeSelection", ui.fg_normal, p.gray3),
        hl.co("TelescopePreviewLine", p.black, p.gray9),
        hl.ln("TelescopePreviewMatch", "TelescopePreviewLine"),

        hl.fg("TelescopeTitle", ui.fg_border),
        hl.ln("TelescopePromptTitle", "TelescopeTitle"),
        hl.ln("TelescopeResultsTitle", "TelescopeTitle"),
        hl.ln("TelescopePreviewTitle", "TelescopeTitle"),
        hl.ln("TelescopeMultiSelection", "TelescopeTitle"),
        hl.ln("TelescopeMultiIcon", "TelescopeTitle"),

        hl.ln("TelescopePromptPrefix", "TelescopeTitle"),
        hl.fg("TelescopePromptCounter", p.gray7),

        hl.co("TelescopeResultsNormal", p.gray6, ui.bg_normal),
        hl.ln("TelescopeResultsSpecialComment", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsDiffUntracked", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsIdentifier", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsDiffDelete", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsDiffChange", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsVariable", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsOperator", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsFunction", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsConstant", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsDiffAdd", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsComment", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsSymbol", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsStruct", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsNumber", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsMethod", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsLineNr", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsField", "TelescopeResultsNormal"),
        hl.ln("TelescopeResultsClass", "TelescopeResultsNormal"),
      },
    },

    -- which-key
    {
      plugin_name = "which_key",
      highlight = {
        hl.co("WhichKey", p.gray8, p.gray2),
        hl.fg("WhichKeyGroup", p.gray5),
        hl.fg("WhichKeyDesc", p.gray6),
        hl.fg("WhichKeySeparator", p.gray4),
      },
    },

    -- volt
    {
      plugin_name = "volt",
      highlight = {
        hl.fg("ExRed", p.coquelicot),
        hl.fg("ExGreen", p.bruyere),
        hl.fg("ExBlue", p.bleuet),
        hl.fg("ExYellow", p.zinnia),
      },
    },
  }
end
