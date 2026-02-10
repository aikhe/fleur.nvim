local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
local syntax = function(theme)
  return {
    hl.fg("Identifier", theme.syntax_default.type),
    hl.fg("Function", theme.syntax_default.func_call),
    hl.fg("Type", theme.syntax_default.type),
    hl.fg("Variable", theme.syntax_default.var),
    hl.fg("Statement", theme.syntax_default.keyword),
    hl.fg("Special", theme.syntax_default.special),
    hl.fg("Keyword", theme.syntax_default.keyword),
    hl.ln("Conditional", "Keyword"),
    hl.ln("Repeat", "Keyword"),
    hl.ln("Label", "Keyword"),
    hl.ln("Exception", "Keyword"),
    hl.ln("PreProc", "Keyword"),

    hl.fg("Constant", theme.syntax_default.const),
    hl.fg("String", theme.syntax_default.string),
    hl.ln("Character", "String"),
    hl.ln("Number", "Constant"),
    hl.ln("Boolean", "Constant"),
    hl.ln("Float", "Constant"),

    hl.fg("Quote", theme.syntax_default.string),
    hl.fg("Operator", theme.syntax_default.punctuation),
    hl.fg("Delimiter", theme.syntax_default.punctuation),
    hl.co("MatchParen", theme.ui.bg_search_cur, theme.ui.bg_search_item),

    hl.fg("Todo", theme.log.hint),
    hl.fg("Question", theme.log.hint),
    hl.fg("Comment", theme.syntax_default.comment),
    hl.fg("SpecialComment", theme.syntax_default.comment),
  }
end

return syntax
