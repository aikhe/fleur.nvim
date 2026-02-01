local spec = require("fleur.highlight.spec")

---@param p FleurPalette
---@param config FleurConfig
---@return FleurHighlightSpec[]
return function(p, config)
  return {
    spec.fg("Comment", p.comment, config.styles.comments),
    spec.fg("Keyword", p.keyword, config.styles.keywords),
    spec.fg("Function", p.hydrangea, config.styles.functions),
    spec.fg("String", p.string, config.styles.strings),
    spec.fg("Identifier", p.fg),
    spec.fg("Type", p.tulip),                                  -- sunflower -> tulip
    spec.fg("Constant", p.tulip),                              -- sunflower -> tulip
    spec.fg("Number", p.tulip),                                -- sunflower -> tulip
    spec.fg("Boolean", p.tulip),                               -- sunflower -> tulip
    spec.fg("Float", p.tulip),                                 -- sunflower -> tulip
    spec.fg("Operator", p.lily),
    spec.fg("Delimiter", p.lily),
    spec.fg("Statement", p.lavender),
    spec.fg("Conditional", p.lavender),
    spec.fg("Repeat", p.lavender),
    spec.fg("Label", p.rose),
    spec.fg("Exception", p.rose),
    spec.fg("PreProc", p.lavender),
    spec.fg("Include", p.lavender),
    spec.fg("Define", p.lavender),
    spec.fg("Macro", p.lavender),
    spec.fg("Special", p.rose),
    spec.fg("SpecialChar", p.rose),
    spec.fg("Tag", p.rose),
    spec.fg("Todo", p.accent, { bold = true }),
    spec.fg("Error", p.rose),
  }
end
