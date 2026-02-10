---@param p FleurPalette
---@return FleurTheme
return function(p)
  local result = { p = p }
  result.none = "none"

  result.ui = {
    use_undercurl = true,
    fg_icon = p.gray4,
    fg_normal = p.gray8,
    bg_normal = p.black,
    fg_title = p.lily,
    fg_whitespace = p.gray3,

    fg_line_num = p.gray4,
    fg_line_num_cur = p.gray6,
    bg_cursorline = p.gray2,
    bg_colorcolumn = p.gray1,

    fg_search = p.black,
    bg_search_item = p.gray3,
    bg_search_cur = p.dahlia,

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
    bg_pmenu_sel = p.gray8,

    bg_scrollbar = p.gray3,
    fg_scrollbar = p.gray5,

    fg_end_of_buffer = p.gray3,
  }

  result.log = {
    error = p.rose,
    info = p.lily,
    warn = p.tulip,
    success = p.stem,
    hint = p.gray6,
  }

  result.diagnostic = {
    text = p.gray4,
    ok = p.stem,
    hint = p.gray6,
    error = p.rose,
    info = p.dahlia,
    warn = p.tulip,
    deprecated = p.tulip,
  }

  result.fs = {
    dir = p.gray6,
    file = p.gray8,
    exec = p.stem,
    link = p.dahlia,
    binary_data = p.gray6,
    socket = p.gray6,
  }

  result.diff = {
    add = p.stem,
    change = p.gray6,
    delete = p.rose,
    info = p.dahlia,
  }

  result.syntax_default = {
    keyword = p.gray5,
    keyword_return = p.stem,
    keyword_exception = p.rose,
    string = p.dahlia,
    string_escape = p.hydrangea,
    comment = p.gray4,
    type = p.gray6,
    type_primitive = p.gray6,
    builtin = p.dahlia,
    func_def = p.lily,
    func_call = p.gray6,
    var = p.gray8,
    var_member = p.gray7,
    property = p.gray6,
    punctuation = p.gray5,
    const = p.gray6,
    special = p.dahlia,
    type_def = p.gray7,
    const_builtin = p.gray5,
    tag = p.gray4,
    func_param = p.gray7,
  }

  result.syntax_lisianthus =
    vim.tbl_deep_extend("force", result.syntax_default, {
      keyword_return = p.stem,
      keyword_exception = p.hydrangea,
    })

  result.syntax_lulumi = vim.tbl_deep_extend("force", result.syntax_default, {
    keyword_return = p.stem,
    keyword_exception = p.hydrangea,
  })

  result.syntax_tweak = {}

  return result
end
