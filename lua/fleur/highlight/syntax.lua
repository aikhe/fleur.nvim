local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param config FleurConfig
---@param theme FleurTheme
---@return FleurHighlightSpec[]
local syntax = function(p, config, theme)
  local s = theme.syntax

  return {
    -- SYNTAX
    spec.fg("Identifier", theme.syntax_default.type),
    spec.fg("Function", theme.syntax_default.func_call),
    spec.fg("Type", theme.syntax_default.type),
    spec.fg("Variable", theme.syntax_default.var),
    spec.fg("Statement", theme.syntax_default.keyword),
    spec.fg("Special", theme.syntax_default.special),
    spec.fg("Keyword", theme.syntax_default.keyword),
    spec.ln("Conditional", "Keyword"),
    spec.ln("Repeat", "Keyword"),
    spec.ln("Label", "Keyword"),
    spec.ln("Exception", "Keyword"),
    spec.ln("PreProc", "Keyword"),

    -- CONSTANTS
    spec.fg("Constant", theme.syntax_default.const),
    spec.fg("String", theme.syntax_default.string),
    spec.ln("Character", "String"),
    spec.ln("Number", "Constant"),
    spec.ln("Boolean", "Constant"),
    spec.ln("Float", "Constant"),

    -- PUNCTUATION
    spec.fg("Quote", theme.syntax_default.string),
    spec.fg("Operator", theme.syntax_default.punctuation),
    spec.fg("Delimiter", theme.syntax_default.punctuation),
    spec.co("MatchParen", theme.ui.bg_search_cur, theme.ui.bg_search_item),

    -- COMMENT
    spec.fg("Todo", theme.log.hint),
    spec.fg("Question", theme.log.hint),
    spec.fg("Comment", theme.syntax_default.comment),
    spec.fg("SpecialComment", theme.syntax_default.comment),
  }
end

return syntax
