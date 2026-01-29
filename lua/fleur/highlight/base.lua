local spec = require "fleur.highlight.spec"

---@param theme FleurTheme
---@return FleurHighlightSpec[]
local base = function(theme, _)
  return {
    -- text
    spec.co("Normal", theme.ui.fg_normal, theme.ui.bg_normal),
    spec.fg("Title", theme.ui.fg_title),
    spec.fg("Whitespace", theme.ui.fg_whitespace),

    -- non text
    spec.fg("NonText", theme.p.gray5),

    -- cursor
    spec.co("SignColumn", theme.ui.fg_line_num, theme.ui.bg_normal),
    spec.co("CursorLine", theme.none, theme.ui.bg_cursorline),
    spec.fg("CursorLineNr", theme.ui.fg_line_num_cur),
    spec.fg("LineNr", theme.ui.fg_line_num),
    spec.bg("ColorColumn", theme.ui.bg_colorcolumn),

    -- search
    spec.co("Search", theme.ui.fg_search, theme.ui.bg_search_item),
    spec.co("CurSearch", theme.ui.fg_search, theme.ui.bg_search_cur),
    spec.ln("IncSearch", "CurSearch"),
    spec.ln("Substitute", "Search"),

    -- visual
    spec.co("VISUAL", theme.ui.fg_visual, theme.ui.bg_visual),
    spec.ln("VISUALNOS", "VISUAL"),

    -- fold
    spec.fg("Folded", theme.p.gray4),
    spec.fg("FoldColumn", theme.p.gray4),

    -- message
    spec.fg("Error", theme.log.error),
    spec.fg("ModeMsg", theme.log.info),
    spec.fg("MoreMsg", theme.log.info),
    spec.fg("MsgArea", theme.log.info),
    spec.ln("ErrorMsg", "Error"),
    spec.fg("WarningMsg", theme.log.warn),
    spec.fg("NvimInternalError", theme.log.error),
    spec.fg("healthError", theme.log.error),
    spec.fg("healthSuccess", theme.log.success),
    spec.fg("healthWarning", theme.log.warn),

    -- statusLine
    spec.co("StatusLine", theme.ui.fg_statusline, theme.ui.bg_statusline),
    spec.co(
      "StatusLineNC",
      theme.ui.fg_statusline_nc,
      theme.ui.bg_statusline_nc
    ),

    -- tabline
    spec.co("Tabline", theme.ui.fg_tab_nc, theme.ui.bg_tab_nc),
    spec.co("TablineSel", theme.ui.fg_tab_active, theme.ui.bg_tab_active),
    spec.co("TablineFill", theme.ui.fg_statusline, theme.ui.bg_statusline),

    -- float
    spec.co("NormalFloat", theme.ui.fg_normal, theme.ui.bg_popup),
    spec.co("FloatBorder", theme.ui.fg_border, theme.ui.bg_popup),
    spec.fg("FloatTitle", theme.ui.fg_title),

    -- menu
    spec.co("Pmenu", theme.ui.fg_menu, theme.ui.bg_menu),
    spec.co("PmenuSbar", theme.ui.bg_scrollbar, theme.ui.bg_scrollbar),
    spec.co("PmenuThumb", theme.ui.fg_scrollbar, theme.ui.fg_scrollbar),
    spec.co("PmenuSel", theme.ui.fg_search, theme.ui.bg_search_cur),

    -- other ui
    spec.fg("WinSeparator", theme.ui.fg_whitespace),
    spec.fg("EndOfBuffer", theme.ui.fg_end_of_buffer),
    spec.fg("QuickFixLine", theme.p.stem),
  }
end

return base
