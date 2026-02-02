---@class FleurTheme
---@field syntax table
---@field syntax_default table
---@field diff table
---@field syntax_lisianthus table
---@field syntax_tweak table

---@param p FleurPalette
---@return FleurTheme
return function(p)
  local result = { p = p }
  result.none = "none"

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
  }

  ---@class LacklusterThemeDiff
  result.diff = {
    add = p.stem,
    change = p.tulip,
    delete = p.rose,
    info = p.dahlia,
  }

  result.syntax_lisianthus =
    vim.tbl_deep_extend("force", result.syntax_default, {
      keyword_return = p.stem,
      keyword_exception = p.hydrangea,
    })

  result.syntax_tweak = {}

  return result
end
