---@class FleurTheme
---@field p FleurPalette
---@field none string
---@field ui table
---@field log table
---@field syntax_default table
---@field diff table
---@field syntax_lisianthus table
---@field syntax_tweak table

---@param p FleurPalette
---@return FleurTheme
return function(p)
  local result = { p = p }
  result.none = "none"

  result.ui = {
    use_undercurl = true,
    fg_normal = p.gray8,
    bg_normal = p.black,
    fg_title = p.lily,
    fg_whitespace = p.gray3,

    fg_line_num = p.gray4,
    fg_line_num_cur = p.gray7,
    bg_cursorline = p.gray2,
    bg_colorcolumn = p.gray1,

    fg_search = p.black,
    bg_search_item = p.dahlia,
    bg_search_cur = p.gray8,

    fg_visual = p.black,
    bg_visual = p.gray8,

    fg_statusline = p.gray7,
    bg_statusline = p.gray3,
    fg_statusline_nc = p.gray4,
    bg_statusline_nc = p.gray1,

    fg_tab_nc = p.gray4,
    bg_tab_nc = p.gray2,
    fg_tab_active = p.gray1,
    bg_tab_active = p.gray8,

    fg_border = p.gray4,
    bg_popup = p.gray2,

    fg_menu = p.gray6,
    bg_menu = p.gray2,

    bg_scrollbar = p.gray3,
    fg_scrollbar = p.gray5,

    fg_end_of_buffer = p.black,
  }

  ---@class FleurThemeLog
  result.log = {
    error = p.rose,
    info = p.lily,
    warn = p.tulip,
    success = p.stem,
    hint = p.gray6,
  }

  ---@class FleurThemeDiagnostic
  result.diagnostic = {
    text = p.gray4,
    ok = p.stem,
    hint = p.gray6,
    error = p.rose,
    info = p.dahlia,
    warn = p.tulip,
    deprecated = p.tulip,
  }

  ---@class FleurThemeDiff
  result.diff = {
    add = p.stem,
    change = p.tulip,
    delete = p.rose,
    info = p.dahlia,
  }

  ---@class FleurThemeSyntax
  result.syntax_default = {
    keyword = p.gray5,
    keyword_return = p.stem,
    keyword_exception = p.rose,
    string = p.dahlia,
    string_escape = p.tulip,
    comment = p.gray4,
    type = p.gray6,
    type_primitive = p.gray6,
    builtin = p.dahlia,
    func_def = p.lily,
    func_call = p.gray1,
    var = p.gray9,
    var_member = p.gray8,
    property = p.gray7,
    punctuation = p.gray6,
    const = p.gray7,
    special = p.dahlia,
  }

  ---@class FleurThemeSyntax
  result.syntax_lisianthus =
    vim.tbl_deep_extend("force", result.syntax_default, {
      keyword_return = p.stem,
      keyword_exception = p.hydrangea,
    })

  result.syntax_tweak = {}

  return result
end
