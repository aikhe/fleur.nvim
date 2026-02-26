local spec = require "fleur.spec"

---@param theme FleurTheme
---@return FleurHighlight[]
return function(theme)
  local p = theme.p

  return {
    -- text
    spec.co("Normal", theme.ui.fg_normal, theme.ui.bg_normal),
    spec.fg("Title", theme.ui.fg_title),
    spec.fg("Whitespace", theme.ui.fg_whitespace),
    spec.fg("NonText", p.gray5),

    -- cursor
    spec.co("SignColumn", theme.ui.fg_line_num, theme.ui.bg_normal),
    spec.co("CursorLine", theme.none, theme.ui.bg_cursorline),
    spec.fg("CursorLineNr", theme.ui.fg_line_num_cur, { bold = true }),
    spec.fg("LineNr", theme.ui.fg_line_num),
    spec.bg("ColorColumn", theme.ui.bg_colorcolumn),

    -- search
    spec.bg("Search", theme.ui.bg_search_item),
    spec.co("CurSearch", theme.ui.fg_search, theme.ui.bg_search_cur),
    spec.ln("IncSearch", "CurSearch"),
    spec.ln("Substitute", "Search"),

    -- visual
    spec.co("VISUAL", theme.ui.fg_visual, theme.ui.bg_visual),
    spec.ln("VISUALNOS", "VISUAL"),

    -- fold
    spec.fg("Folded", p.gray4),
    spec.fg("FoldColumn", p.gray4),

    -- message
    spec.fg("Error", theme.log.error),
    spec.fg("ModeMsg", theme.log.info),
    spec.fg("MoreMsg", theme.log.info),
    spec.fg("MsgArea", theme.log.info),
    spec.ln("ErrorMsg", "Error"),
    spec.fg("WarningMsg", theme.log.warn),
    spec.fg("NvimInternalError", theme.log.error),
    spec.fg("healthError", theme.log.error),
    spec.fg("healthSuccess", theme.log.success),
    spec.fg("healthWarning", theme.log.warn),

    -- statusline
    spec.co("StatusLine", theme.ui.fg_statusline, theme.ui.bg_statusline),
    spec.co("StatusLineNC", theme.ui.fg_statusline_nc, theme.ui.bg_statusline_nc),

    -- tabline
    spec.co("Tabline", theme.ui.fg_tab_nc, theme.ui.bg_tab_nc),
    spec.co("TablineSel", theme.ui.fg_tab_active, theme.ui.bg_tab_active),
    spec.co("TablineFill", theme.ui.fg_statusline, theme.ui.bg_statusline),

    -- float
    spec.co("NormalFloat", theme.ui.fg_normal, theme.ui.bg_popup),
    spec.co("FloatBorder", theme.ui.fg_border, theme.ui.bg_popup),
    spec.fg("FloatTitle", theme.ui.fg_title),

    -- menu
    spec.co("Pmenu", theme.ui.fg_menu, theme.ui.bg_menu),
    spec.co("PmenuSbar", theme.ui.bg_scrollbar, theme.ui.bg_scrollbar),
    spec.co("PmenuThumb", theme.ui.fg_scrollbar, theme.ui.fg_scrollbar),
    spec.co("PmenuSel", theme.ui.fg_search, theme.ui.bg_pmenu_sel),

    -- other ui
    spec.fg("WinSeparator", theme.ui.bg_cursorline),
    spec.fg("EndOfBuffer", theme.ui.fg_end_of_buffer),
    spec.fg("QuickFixLine", p.bruyere),

    -- lsp
    spec.bg("LspReferenceText", p.gray2),
    spec.bg("LspReferenceRead", p.gray2),
    spec.bg("LspReferenceWrite", p.gray2),
    spec.fg("LspSignatureActiveParameter", p.lis, { bold = true }),

    -- syntax
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

    -- constants
    spec.fg("Constant", theme.syntax_default.const),
    spec.fg("String", theme.syntax_default.string),
    spec.ln("Character", "String"),
    spec.ln("Number", "Constant"),
    spec.ln("Boolean", "Constant"),
    spec.ln("Float", "Constant"),

    -- punctuation
    spec.fg("Quote", theme.syntax_default.string),
    spec.fg("Operator", theme.syntax_default.punctuation),
    spec.fg("Delimiter", theme.syntax_default.punctuation),
    spec.co("MatchParen", theme.ui.bg_search_cur, theme.ui.bg_search_item),

    -- comment
    spec.fg("Todo", theme.log.hint),
    spec.fg("Question", theme.log.hint),
    spec.fg("Comment", theme.syntax_default.comment),
    spec.fg("CommentFg", theme.syntax_default.comment),
    spec.fg("SpecialComment", theme.syntax_default.comment),

    -- diagnostics
    spec.fg("DiagnosticVirtualTextOk", theme.diagnostic.ok),
    spec.fg("DiagnosticVirtualTextHint", theme.diagnostic.hint),
    spec.fg("DiagnosticVirtualTextInfo", theme.diagnostic.info),
    spec.fg("DiagnosticVirtualTextWarn", theme.diagnostic.warn),
    spec.fg("DiagnosticVirtualTextError", theme.diagnostic.error),

    spec.fg("DiagnosticSignOk", theme.diagnostic.ok),
    spec.fg("DiagnosticSignInfo", theme.diagnostic.info),
    spec.fg("DiagnosticSignHint", theme.diagnostic.hint),
    spec.fg("DiagnosticSignWarn", theme.diagnostic.warn),
    spec.fg("DiagnosticSignError", theme.diagnostic.error),
    spec.fg("DiagnosticSignDeprecated", theme.diagnostic.deprecated),

    spec.fg("DiagnosticFloatingOk", theme.diagnostic.ok),
    spec.fg("DiagnosticFloatingInfo", theme.diagnostic.info),
    spec.fg("DiagnosticFloatingHint", theme.diagnostic.hint),
    spec.fg("DiagnosticFloatingWarn", theme.diagnostic.warn),
    spec.fg("DiagnosticFloatingError", theme.diagnostic.error),

    spec.op("DiagnosticUnderlineWarn", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.warn,
    }),
    spec.op("DiagnosticUnderlineInfo", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.info,
    }),
    spec.op("DiagnosticUnderlineHint", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.hint,
    }),
    spec.op("DiagnosticUnderlineError", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.error,
    }),

    -- treesitter syntax
    spec.fg("@keyword", theme.syntax_default.keyword),
    spec.fg("@keyword.return", theme.syntax_default.keyword_return),
    spec.fg("@keyword.exception", theme.syntax_default.keyword_exception),
    spec.fg("@attribute", theme.syntax_default.keyword),
    spec.fg("@type", theme.syntax_default.type),
    spec.fg("@type.definition", theme.syntax_default.type_def),
    spec.fg("@property", p.gray6),
    spec.fg("@label", theme.ui.fg_title),

    -- treesitter variable
    spec.fg("@variable", theme.syntax_default.var),
    spec.fg("@variable.member", theme.syntax_default.var_member),

    -- treesitter constant
    spec.fg("@constant", theme.syntax_default.const),
    spec.fg("@boolean", theme.syntax_default.const),
    spec.fg("@number", theme.syntax_default.const),

    -- treesitter punctuation
    spec.fg("@operator", theme.syntax_default.punctuation),
    spec.fg("@punctuation.bracket", theme.syntax_default.punctuation),
    spec.fg("@punctuation.special", theme.syntax_default.punctuation),
    spec.fg("@punctuation.delimiter", theme.syntax_default.punctuation),
    spec.fg("@constructor", theme.syntax_default.punctuation),

    -- treesitter func
    spec.fg("@function", theme.syntax_default.func_def),
    spec.fg("@function.method", theme.syntax_default.func_def),
    spec.fg("@function.call", theme.syntax_default.func_call),
    spec.fg("@function.method.call", theme.syntax_default.func_call),
    spec.fg("@variable.parameter", theme.syntax_default.func_param),

    -- treesitter string
    spec.fg("@string", theme.syntax_default.string),
    spec.fg("@character", theme.syntax_default.string),
    spec.fg("@string.escape", theme.syntax_default.string_escape, { bold = true }),
    spec.fg("@string.special", theme.syntax_default.string_escape, { bold = true }),
    spec.fg("@string.regexp", theme.syntax_default.string_escape, { bold = true }),

    -- treesitter comment
    spec.fg("@comment", theme.syntax_default.comment),
    spec.fg("@comment.todo", theme.diagnostic.hint),
    spec.fg("@comment.note", theme.diagnostic.hint),
    spec.fg("@comment.warning", theme.diagnostic.warn),
    spec.fg("@comment.error", theme.diagnostic.error),
    spec.fg("@comment.documentation", theme.syntax_default.comment),

    -- treesitter markup
    spec.fg("@markup.heading", theme.ui.fg_title),
    spec.fg("@markup.quote", p.gray6),
    spec.fg("@markup.strong", p.gray4),
    spec.fg("@markup.italic", p.gray4),
    spec.fg("@markup.strikethrough", p.gray4),
    spec.op("@markup.underline", { underline = true }),

    spec.fg("@markup.list", p.gray4),
    spec.fg("@markup.list.checked", theme.syntax_default.string_escape, { bold = true }),
    spec.fg("@markup.list.unchecked", p.coquelicot),

    spec.fg("@markup.link", p.gray6),
    spec.fg("@markup.link.label", p.gray6),
    spec.fg("@markup.link.url", p.gray4),

    spec.fg("@markup.math", p.zinnia),

    -- treesitter tags
    spec.fg("@tag", theme.syntax_default.tag),
    spec.fg("@tag.delimiter", theme.syntax_default.tag),
    spec.fg("@tag.attribute", p.gray4),

    -- treesitter builtin
    spec.fg("@type.builtin", theme.syntax_default.type_primitive),
    spec.fg("@tag.builtin", theme.syntax_default.tag),
    spec.fg("@variable.builtin", theme.syntax_default.var),
    spec.fg("@function.builtin", theme.syntax_default.builtin),
    spec.fg("@module.builtin", theme.syntax_default.builtin),
    spec.fg("@constant.builtin", theme.syntax_default.const_builtin),

    -- treesitter diff
    spec.fg("@diff.pluss", theme.diff.add),
    spec.fg("@diff.minus", theme.diff.delete),
    spec.fg("@diff.delta", theme.diff.change),

    -- lsp links to treesitter
    spec.ln("@lsp.type.keyword", "@keyword"),
    spec.ln("@lsp.type.function", "@function"),
    spec.ln("@lsp.type.variable", "@variable"),
    spec.ln("@lsp.type.operator", "@operator"),
    spec.ln("@lsp.type.type", "@type"),
    spec.ln("@lsp.type.string", "@string"),
    spec.ln("@lsp.type.number", "@number"),
    spec.ln("@lsp.type.boolean", "@boolean"),
    spec.ln("@lsp.type.enumMember", "@variable.member"),

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
    spec.fg("@string.special.symbol.clojure", theme.syntax_default.type),
    spec.ln("lispFunc", "@variable.parameter"),
    spec.ln("lispSymbol", "@variable"),
    spec.ln("lispDecl", "@keyword"),

    -- zsh
    spec.fg("zshFunction", theme.syntax_default.func_def),

    -- json, yaml, toml
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

    -- tex
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
    spec.fg("markdownCodeDelimiter", p.bruyere),
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

    -- todo-comments.nvim
    spec.bg("TodoBgTODO", theme.p.lis),
    spec.fg("TodoFgTODO", theme.p.lis, { bold = true }),
    spec.op("TodoSignTODO", { bold = true }),

    spec.bg("TodoBgNOTE", theme.p.bleuet),
    spec.fg("TodoFgNOTE", theme.p.bleuet, { bold = true }),
    spec.op("TodoSignNOTE", { bold = true }),

    spec.bg("TodoBgWARN", theme.p.zinnia),
    spec.fg("TodoFgWARN", theme.p.zinnia, { bold = true }),
    spec.op("TodoSignWARN", { bold = true }),
  }
end
