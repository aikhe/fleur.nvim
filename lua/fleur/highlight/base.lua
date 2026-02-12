local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
local base = function(theme)
  return {
    hl.co("Normal", theme.ui.fg_normal, theme.ui.bg_normal),
    hl.fg("Title", theme.ui.fg_title),
    hl.fg("Whitespace", theme.ui.fg_whitespace),
    hl.fg("NonText", theme.p.gray5),

    hl.co("SignColumn", theme.ui.fg_line_num, theme.ui.bg_normal),
    hl.co("CursorLine", theme.none, theme.ui.bg_cursorline),
    hl.fg("CursorLineNr", theme.ui.fg_line_num_cur, { bold = true }),
    hl.fg("LineNr", theme.ui.fg_line_num),
    hl.bg("ColorColumn", theme.ui.bg_colorcolumn),

    hl.bg("Search", theme.ui.bg_search_item),
    hl.co("CurSearch", theme.ui.fg_search, theme.ui.bg_search_cur),
    hl.ln("IncSearch", "CurSearch"),
    hl.ln("Substitute", "Search"),

    hl.co("VISUAL", theme.ui.fg_visual, theme.ui.bg_visual),
    hl.ln("VISUALNOS", "VISUAL"),

    hl.fg("Folded", theme.p.gray4),
    hl.fg("FoldColumn", theme.p.gray4),

    hl.fg("Error", theme.log.error),
    hl.fg("ModeMsg", theme.log.info),
    hl.fg("MoreMsg", theme.log.info),
    hl.fg("MsgArea", theme.log.info),
    hl.ln("ErrorMsg", "Error"),
    hl.fg("WarningMsg", theme.log.warn),
    hl.fg("NvimInternalError", theme.log.error),
    hl.fg("healthError", theme.log.error),
    hl.fg("healthSuccess", theme.log.success),
    hl.fg("healthWarning", theme.log.warn),

    hl.co("StatusLine", theme.ui.fg_statusline, theme.ui.bg_statusline),
    hl.co("StatusLineNC", theme.ui.fg_statusline_nc, theme.ui.bg_statusline_nc),

    hl.co("Tabline", theme.ui.fg_tab_nc, theme.ui.bg_tab_nc),
    hl.co("TablineSel", theme.ui.fg_tab_active, theme.ui.bg_tab_active),
    hl.co("TablineFill", theme.ui.fg_statusline, theme.ui.bg_statusline),

    hl.co("NormalFloat", theme.ui.fg_normal, theme.ui.bg_popup),
    hl.co("FloatBorder", theme.ui.fg_border, theme.ui.bg_popup),
    hl.fg("FloatTitle", theme.ui.fg_title),

    hl.co("Pmenu", theme.ui.fg_menu, theme.ui.bg_menu),
    hl.co("PmenuSbar", theme.ui.bg_scrollbar, theme.ui.bg_scrollbar),
    hl.co("PmenuThumb", theme.ui.fg_scrollbar, theme.ui.fg_scrollbar),
    hl.co("PmenuSel", theme.ui.fg_search, theme.ui.bg_pmenu_sel),

    hl.fg("WinSeparator", theme.ui.bg_cursorline),
    hl.fg("EndOfBuffer", theme.ui.fg_end_of_buffer),
    hl.fg("QuickFixLine", theme.p.bruyere),
  }
end

return base
