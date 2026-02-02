local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param config FleurConfig
---@param theme FleurTheme
---@return FleurHighlightSpec[]
local syntax = function(p, config, theme)
  local s = theme.syntax

  return {
    -- SYNTAX
    spec.fg("Identifier", theme.syntax.type),
    spec.fg("Function", theme.syntax.func_call),
    spec.fg("Type", theme.syntax.type),
    spec.fg("Variable", theme.syntax.var),
    spec.fg("Statement", theme.syntax.keyword),
    spec.fg("Special", theme.syntax.special),
    spec.fg("Keyword", theme.syntax.keyword),
    spec.ln("Conditional", "Keyword"),
    spec.ln("Repeat", "Keyword"),
    spec.ln("Label", "Keyword"),
    spec.ln("Exception", "Keyword"),
    spec.ln("PreProc", "Keyword"),

    -- CONSTANTS
    spec.fg("Constant", theme.syntax.const),
    spec.fg("String", theme.syntax.string),
    spec.ln("Character", "String"),
    spec.ln("Number", "Constant"),
    spec.ln("Boolean", "Constant"),
    spec.ln("Float", "Constant"),

    -- PUNCTUATION
    spec.fg("Quote", theme.syntax.string),
    spec.fg("Operator", theme.syntax.punctuation),
    spec.fg("Delimiter", theme.syntax.punctuation),
    spec.co("MatchParen", theme.ui.bg_search_cur, theme.ui.bg_search_item),

    -- COMMENT
    spec.fg("Todo", theme.log.hint),
    spec.fg("Question", theme.log.hint),
    spec.fg("Comment", theme.syntax.comment),
    spec.fg("SpecialComment", theme.syntax.comment),
  }
end

return syntax
