local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param _ FleurConfig
---@return FleurHighlightSpec[]
return function(p, _)
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

    -- treesitter-specific groups
    spec.fg("@variable.parameter", p.tulip), -- sunflower -> tulip
    spec.fg("@variable.member", p.lily),
    spec.fg("@property", p.lily),
    spec.fg("@field", p.lily),
    spec.fg("@punctuation.bracket", p.gray4),
    spec.fg("@punctuation.delimiter", p.lily),
    spec.fg("@punctuation.special", p.rose),
    spec.fg("@constructor", p.hydrangea),
    spec.fg("@tag", p.rose),
    spec.fg("@tag.attribute", p.tulip), -- sunflower -> tulip
    spec.fg("@tag.delimiter", p.gray4),
    spec.fg("@namespace", p.lavender),
    spec.fg("@module", p.lavender),
  }
end
