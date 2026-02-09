local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
local oil = function(theme)
  return {
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

      hl.co("WinBar", theme.ui.fg_line_num_cur, theme.ui.bg_normal),
      hl.co("WinBarNC", theme.ui.fg_line_num_cur, theme.ui.bg_normal),
    },
  }
end

return oil
