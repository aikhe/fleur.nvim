local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param config FleurConfig
---@param theme FleurTheme
---@return FleurHighlightSpec[]
local syntax = function(p, config, theme)
  local s = theme.syntax

  return {
    spec.fg("Comment", s.comment, config.styles.comments),
    spec.fg("Keyword", s.keyword, config.styles.keywords),
    spec.fg("Function", s.func_def, config.styles.functions),
    spec.fg("String", s.string, config.styles.strings),
    spec.fg("Identifier", s.var),
    spec.fg("Type", s.type),
    spec.fg("Constant", s.var),
    spec.fg("Number", s.punctuation),
    spec.fg("Boolean", s.var_member),
    spec.fg("Float", s.punctuation),
    spec.fg("Operator", p.gray5),
    spec.fg("Delimiter", p.lily),
    spec.fg("Statement", s.keyword),
    spec.fg("Conditional", s.keyword),
    spec.fg("Repeat", s.keyword),
    spec.fg("Label", s.keyword_return),
    spec.fg("Exception", s.keyword_exception),
    spec.fg("PreProc", s.builtin),
    spec.fg("Include", s.builtin),
    spec.fg("Define", s.builtin),
    spec.fg("Macro", s.builtin),
    spec.fg("Special", s.string_escape),
    spec.fg("SpecialChar", s.string_escape),
    spec.fg("Tag", p.rose),
    spec.fg("Todo", p.hydrangea, { bold = true }),
    spec.fg("Error", p.rose),
  }
end

return syntax
