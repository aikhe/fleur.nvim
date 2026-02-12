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
    fg_title = p.lis,
    fg_whitespace = p.gray3,

    fg_line_num = p.gray4,
    fg_line_num_cur = p.gray6,
    bg_cursorline = p.gray2,
    bg_colorcolumn = p.gray1,

    fg_search = p.black,
    bg_search_item = p.gray3,
    bg_search_cur = p.bleuet,

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
    error = p.coquelicot,
    info = p.lis,
    warn = p.zinnia,
    success = p.bruyere,
    hint = p.gray6,
  }

  result.diagnostic = {
    text = p.gray4,
    ok = p.bruyere,
    hint = p.gray6,
    error = p.coquelicot,
    info = p.bleuet,
    warn = p.lis,
    deprecated = p.zinnia,
  }

  result.fs = {
    dir = p.gray6,
    file = p.gray8,
    exec = p.bruyere,
    link = p.bleuet,
    binary_data = p.gray6,
    socket = p.gray6,
  }

  result.diff = {
    add = p.bruyere,
    change = p.gray6,
    delete = p.coquelicot,
    info = p.bleuet,
  }

  result.syntax_default = {
    keyword = p.gray5,
    keyword_return = p.bruyere,
    keyword_exception = p.coquelicot,
    string = p.bleuet,
    string_escape = p.anemone,
    comment = p.gray4,
    type = p.gray6,
    type_primitive = p.gray6,
    builtin = p.bleuet,
    func_def = p.lis,
    func_call = p.gray6,
    var = p.gray8,
    var_member = p.gray7,
    property = p.gray6,
    punctuation = p.gray5,
    const = p.gray6,
    special = p.bleuet,
    type_def = p.gray7,
    const_builtin = p.gray5,
    tag = p.gray4,
    func_param = p.gray7,
  }

  result.syntax_lisianthus =
    vim.tbl_deep_extend("force", result.syntax_default, {
      keyword_return = p.bruyere,
      keyword_exception = p.anemone,
    })

  result.syntax_lulumi = vim.tbl_deep_extend("force", result.syntax_default, {
    keyword_return = p.bruyere,
    keyword_exception = p.anemone,
  })

  result.syntax_tweak = {}

  return result
end
