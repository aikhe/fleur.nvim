local spec = require "fleur.highlight.spec"

---@param p FleurPalette
---@param _ FleurConfig
---@param theme FleurTheme
---@return FleurHighlightSpec[]
local miscs = function(p, _, theme)
  return {
    -- spell
    spec.op("SpellBad", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
    }),
    spec.ln("SpellLocal", "SpellBad"),
    spec.ln("SpellCap", "SpellBad"),
    spec.ln("SpellRare", "SpellBad"),

    -- diff
    spec.fg("Added", theme.diff.add),
    spec.fg("Changed", theme.diff.change),
    spec.fg("Removed", theme.diff.delete),
    spec.fg("DiffAdd", theme.diff.add),
    spec.fg("DiffChange", theme.diff.change),
    spec.fg("DiffDelete", theme.diff.delete),
    spec.fg("DiffText", theme.diff.info),
    spec.fg("DiffAdded", theme.diff.add),
    spec.fg("DiffRemoved", theme.diff.delete),
    spec.fg("DiffChanged", theme.diff.change),
    spec.fg("DiffOldFile", theme.diff.info),
    spec.fg("DiffNewFile", theme.diff.add),
    spec.fg("DiffFile", theme.diff.change),
    spec.fg("DiffLine", theme.diff.change),
    spec.fg("DiffIndexLine", theme.diff.info),

    -- lisp
    spec.fg("@string.special.symbol.clojure", theme.syntax_default.type), -- :symbols
    spec.ln("lispFunc", "@variable.parameter"),
    spec.ln("lispSymbol", "@variable"),
    spec.ln("lispDecl", "@keyword"),

    -- zsh
    spec.fg("zshFunction", theme.syntax_default.func_def),

    -- json,yaml,toml
    spec.fg("@property.json", p.gray6),
    spec.fg("@property.yaml", p.gray6),
    spec.fg("@property.toml", p.gray6),
    spec.fg("@type.toml", p.gray8),

    -- xml
    spec.fg("xmlTag", p.gray5),
    spec.fg("xmlTagName", p.gray5),
    spec.fg("xmlAttrib", p.gray4),

    -- html
    spec.fg("htmlTagName", theme.syntax_default.tag),

    -- text
    spec.fg("texStatement", p.gray5),
    spec.fg("texDefCmd", p.gray5),
    spec.fg("texDefName", p.gray5),
    spec.fg("texDocType", p.gray5),
    spec.fg("texDocZone", p.gray5),
    spec.fg("texDocAbstract", p.gray5),
    spec.fg("texBeginEnd", p.gray5),

    -- css
    spec.fg("cssMediaProp", theme.ui.fg_normal),
    spec.fg("cssTransitionProp", theme.ui.fg_normal),
    spec.fg("cssTextProp", theme.ui.fg_normal),
    spec.fg("cssBoxProp", theme.ui.fg_normal),
    spec.fg("cssFontProp", theme.ui.fg_normal),
    spec.fg("cssPositioningProp", theme.ui.fg_normal),
    spec.fg("cssBorderProp", theme.ui.fg_normal),
    spec.fg("cssBackgroundProp", theme.ui.fg_normal),
    spec.fg("cssTransformProp", theme.ui.fg_normal),
    spec.fg("@property.css", theme.ui.fg_normal),
    spec.fg("@tag.css", theme.ui.fg_normal),

    -- markdown
    spec.fg("markdownCodeDelimiter", p.stem),
    spec.fg("markdownLinkDelimiter", p.gray6),
    spec.ln("markdownLinkTextDelimiter", "@markup.link"),
    spec.ln("markdownLinkText", "@markup.link"),
    spec.ln("markdownUrl", "@markup.link.url"),

    -- sql
    spec.fg("sqlType", theme.syntax_default.string),
    spec.fg("sqlKeyword", theme.syntax_default.keyword),
    spec.fg("sqlStatement", theme.syntax_default.keyword),
    spec.fg("sqlVariable", theme.syntax_default.special),

    -- make
    spec.fg("@string.special.symbol.make", theme.syntax_default.string),
    spec.fg("makeSpecial", theme.syntax_default.special),

    -- webdevicon
    spec.fg("DevIconDefault", theme.ui.fg_icon),
  }
end

return miscs
