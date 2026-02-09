local hl = require "fleur.highlight.hl"

---@param p FleurPalette
---@param _ FleurConfig
---@param theme FleurTheme
---@return FleurHighlight[]
local miscs = function(p, _, theme)
  return {
    -- spell
    hl.op("SpellBad", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
    }),
    hl.ln("SpellLocal", "SpellBad"),
    hl.ln("SpellCap", "SpellBad"),
    hl.ln("SpellRare", "SpellBad"),

    -- diff
    hl.fg("Added", theme.diff.add),
    hl.fg("Changed", theme.diff.change),
    hl.fg("Removed", theme.diff.delete),
    hl.fg("DiffAdd", theme.diff.add),
    hl.fg("DiffChange", theme.diff.change),
    hl.fg("DiffDelete", theme.diff.delete),
    hl.fg("DiffText", theme.diff.info),
    hl.fg("DiffAdded", theme.diff.add),
    hl.fg("DiffRemoved", theme.diff.delete),
    hl.fg("DiffChanged", theme.diff.change),
    hl.fg("DiffOldFile", theme.diff.info),
    hl.fg("DiffNewFile", theme.diff.add),
    hl.fg("DiffFile", theme.diff.change),
    hl.fg("DiffLine", theme.diff.change),
    hl.fg("DiffIndexLine", theme.diff.info),

    -- lisp
    hl.fg("@string.special.symbol.clojure", theme.syntax_default.type), -- :symbols
    hl.ln("lispFunc", "@variable.parameter"),
    hl.ln("lispSymbol", "@variable"),
    hl.ln("lispDecl", "@keyword"),

    -- zsh
    hl.fg("zshFunction", theme.syntax_default.func_def),

    -- json,yaml,toml
    hl.fg("@property.json", p.gray6),
    hl.fg("@property.yaml", p.gray6),
    hl.fg("@property.toml", p.gray6),
    hl.fg("@type.toml", p.gray8),

    -- xml
    hl.fg("xmlTag", p.gray5),
    hl.fg("xmlTagName", p.gray5),
    hl.fg("xmlAttrib", p.gray4),

    -- html
    hl.fg("htmlTagName", theme.syntax_default.tag),

    -- text
    hl.fg("texStatement", p.gray5),
    hl.fg("texDefCmd", p.gray5),
    hl.fg("texDefName", p.gray5),
    hl.fg("texDocType", p.gray5),
    hl.fg("texDocZone", p.gray5),
    hl.fg("texDocAbstract", p.gray5),
    hl.fg("texBeginEnd", p.gray5),

    -- css
    hl.fg("cssMediaProp", theme.ui.fg_normal),
    hl.fg("cssTransitionProp", theme.ui.fg_normal),
    hl.fg("cssTextProp", theme.ui.fg_normal),
    hl.fg("cssBoxProp", theme.ui.fg_normal),
    hl.fg("cssFontProp", theme.ui.fg_normal),
    hl.fg("cssPositioningProp", theme.ui.fg_normal),
    hl.fg("cssBorderProp", theme.ui.fg_normal),
    hl.fg("cssBackgroundProp", theme.ui.fg_normal),
    hl.fg("cssTransformProp", theme.ui.fg_normal),
    hl.fg("@property.css", theme.ui.fg_normal),
    hl.fg("@tag.css", theme.ui.fg_normal),

    -- markdown
    hl.fg("markdownCodeDelimiter", p.stem),
    hl.fg("markdownLinkDelimiter", p.gray6),
    hl.ln("markdownLinkTextDelimiter", "@markup.link"),
    hl.ln("markdownLinkText", "@markup.link"),
    hl.ln("markdownUrl", "@markup.link.url"),

    -- sql
    hl.fg("sqlType", theme.syntax_default.string),
    hl.fg("sqlKeyword", theme.syntax_default.keyword),
    hl.fg("sqlStatement", theme.syntax_default.keyword),
    hl.fg("sqlVariable", theme.syntax_default.special),

    -- make
    hl.fg("@string.special.symbol.make", theme.syntax_default.string),
    hl.fg("makeSpecial", theme.syntax_default.special),

    -- webdevicon
    hl.fg("DevIconDefault", theme.ui.fg_icon),
  }
end

return miscs
