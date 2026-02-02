local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param _ FleurConfig
---@param theme FleurTheme
---@return FleurHighlightSpec[]
local treesitter = function(p, _, theme)
  local s = theme.syntax

  return {
    -- links to standard syntax groups
    spec.ln("@keyword", "Keyword"),
    spec.ln("@function", "Function"),
    spec.ln("@function.call", "Function"),
    spec.ln("@variable", "Identifier"),
    spec.ln("@string", "String"),
    spec.ln("@type", "Type"),
    spec.ln("@comment", "Comment"),
    spec.ln("@constant", "Constant"),
    spec.ln("@number", "Number"),
    spec.ln("@boolean", "Boolean"),
    spec.ln("@operator", "Operator"),

    -- treesitter-specific groups using theme.syntax
    spec.fg("@keyword.return", s.keyword_return),
    spec.fg("@keyword.exception", s.keyword_exception),
    spec.fg("@variable.parameter", s.var_member),
    spec.fg("@variable.member", s.keyword_exception),
    spec.fg("@property", s.property),
    spec.fg("@field", s.var_member),
    spec.fg("@punctuation.bracket", s.punctuation),
    spec.fg("@punctuation.delimiter", s.punctuation),
    spec.fg("@punctuation.special", s.string_escape),
    spec.fg("@constructor", s.type),
    spec.fg("@string.escape", s.string_escape),
    spec.fg("@function.builtin", s.builtin),
    spec.fg("@type.builtin", s.type_primitive),
    spec.fg("@tag", p.rose),
    spec.fg("@tag.attribute", p.tulip),
    spec.fg("@tag.delimiter", p.gray4),
    spec.fg("@namespace", s.builtin),
    spec.fg("@module", s.builtin),
  }
end

return treesitter
