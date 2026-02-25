local hl = require "fleur.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
return function(theme)
  local p = theme.p

  return {
    -- text
    hl.co("Normal", theme.ui.fg_normal, theme.ui.bg_normal),
    hl.fg("Title", theme.ui.fg_title),
    hl.fg("Whitespace", theme.ui.fg_whitespace),
    hl.fg("NonText", p.gray5),

    -- cursor
    hl.co("SignColumn", theme.ui.fg_line_num, theme.ui.bg_normal),
    hl.co("CursorLine", theme.none, theme.ui.bg_cursorline),
    hl.fg("CursorLineNr", theme.ui.fg_line_num_cur, { bold = true }),
    hl.fg("LineNr", theme.ui.fg_line_num),
    hl.bg("ColorColumn", theme.ui.bg_colorcolumn),

    -- search
    hl.bg("Search", theme.ui.bg_search_item),
    hl.co("CurSearch", theme.ui.fg_search, theme.ui.bg_search_cur),
    hl.ln("IncSearch", "CurSearch"),
    hl.ln("Substitute", "Search"),

    -- visual
    hl.co("VISUAL", theme.ui.fg_visual, theme.ui.bg_visual),
    hl.ln("VISUALNOS", "VISUAL"),

    -- fold
    hl.fg("Folded", p.gray4),
    hl.fg("FoldColumn", p.gray4),

    -- message
    hl.fg("Error", theme.log.error),
    hl.fg("ModeMsg", theme.log.info),
    hl.fg("MoreMsg", theme.log.info),
    hl.fg("MsgArea", theme.log.info),
    hl.ln("ErrorMsg", "Error"),
    hl.fg("WarningMsg", theme.log.warn),
    hl.fg("NvimInternalError", theme.log.error),
    hl.fg("healthError", theme.log.error),
    hl.fg("healthSuccess", theme.log.success),
    hl.fg("healthWarning", theme.log.warn),

    -- statusline
    hl.co("StatusLine", theme.ui.fg_statusline, theme.ui.bg_statusline),
    hl.co("StatusLineNC", theme.ui.fg_statusline_nc, theme.ui.bg_statusline_nc),

    -- tabline
    hl.co("Tabline", theme.ui.fg_tab_nc, theme.ui.bg_tab_nc),
    hl.co("TablineSel", theme.ui.fg_tab_active, theme.ui.bg_tab_active),
    hl.co("TablineFill", theme.ui.fg_statusline, theme.ui.bg_statusline),

    -- float
    hl.co("NormalFloat", theme.ui.fg_normal, theme.ui.bg_popup),
    hl.co("FloatBorder", theme.ui.fg_border, theme.ui.bg_popup),
    hl.fg("FloatTitle", theme.ui.fg_title),

    -- menu
    hl.co("Pmenu", theme.ui.fg_menu, theme.ui.bg_menu),
    hl.co("PmenuSbar", theme.ui.bg_scrollbar, theme.ui.bg_scrollbar),
    hl.co("PmenuThumb", theme.ui.fg_scrollbar, theme.ui.fg_scrollbar),
    hl.co("PmenuSel", theme.ui.fg_search, theme.ui.bg_pmenu_sel),

    -- other ui
    hl.fg("WinSeparator", theme.ui.bg_cursorline),
    hl.fg("EndOfBuffer", theme.ui.fg_end_of_buffer),
    hl.fg("QuickFixLine", p.bruyere),

    -- lsp
    hl.bg("LspReferenceText", p.gray2),
    hl.bg("LspReferenceRead", p.gray2),
    hl.bg("LspReferenceWrite", p.gray2),
    hl.fg("LspSignatureActiveParameter", p.lis, { bold = true }),

    -- syntax
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

    -- constants
    hl.fg("Constant", theme.syntax_default.const),
    hl.fg("String", theme.syntax_default.string),
    hl.ln("Character", "String"),
    hl.ln("Number", "Constant"),
    hl.ln("Boolean", "Constant"),
    hl.ln("Float", "Constant"),

    -- punctuation
    hl.fg("Quote", theme.syntax_default.string),
    hl.fg("Operator", theme.syntax_default.punctuation),
    hl.fg("Delimiter", theme.syntax_default.punctuation),
    hl.co("MatchParen", theme.ui.bg_search_cur, theme.ui.bg_search_item),

    -- comment
    hl.fg("Todo", theme.log.hint),
    hl.fg("Question", theme.log.hint),
    hl.fg("Comment", theme.syntax_default.comment),
    hl.fg("CommentFg", theme.syntax_default.comment),
    hl.fg("SpecialComment", theme.syntax_default.comment),

    -- diagnostics
    hl.fg("DiagnosticVirtualTextOk", theme.diagnostic.ok),
    hl.fg("DiagnosticVirtualTextHint", theme.diagnostic.hint),
    hl.fg("DiagnosticVirtualTextInfo", theme.diagnostic.info),
    hl.fg("DiagnosticVirtualTextWarn", theme.diagnostic.warn),
    hl.fg("DiagnosticVirtualTextError", theme.diagnostic.error),

    hl.fg("DiagnosticSignOk", theme.diagnostic.ok),
    hl.fg("DiagnosticSignInfo", theme.diagnostic.info),
    hl.fg("DiagnosticSignHint", theme.diagnostic.hint),
    hl.fg("DiagnosticSignWarn", theme.diagnostic.warn),
    hl.fg("DiagnosticSignError", theme.diagnostic.error),
    hl.fg("DiagnosticSignDeprecated", theme.diagnostic.deprecated),

    hl.fg("DiagnosticFloatingOk", theme.diagnostic.ok),
    hl.fg("DiagnosticFloatingInfo", theme.diagnostic.info),
    hl.fg("DiagnosticFloatingHint", theme.diagnostic.hint),
    hl.fg("DiagnosticFloatingWarn", theme.diagnostic.warn),
    hl.fg("DiagnosticFloatingError", theme.diagnostic.error),

    hl.op("DiagnosticUnderlineWarn", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.warn,
    }),
    hl.op("DiagnosticUnderlineInfo", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.info,
    }),
    hl.op("DiagnosticUnderlineHint", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.hint,
    }),
    hl.op("DiagnosticUnderlineError", {
      undercurl = theme.ui.use_undercurl,
      underline = not theme.ui.use_undercurl,
      sp = theme.diagnostic.error,
    }),

    -- treesitter syntax
    hl.fg("@keyword", theme.syntax_default.keyword),
    hl.fg("@keyword.return", theme.syntax_default.keyword_return),
    hl.fg("@keyword.exception", theme.syntax_default.keyword_exception),
    hl.fg("@attribute", theme.syntax_default.keyword),
    hl.fg("@type", theme.syntax_default.type),
    hl.fg("@type.definition", theme.syntax_default.type_def),
    hl.fg("@property", p.gray6),
    hl.fg("@label", theme.ui.fg_title),

    -- treesitter variable
    hl.fg("@variable", theme.syntax_default.var),
    hl.fg("@variable.member", theme.syntax_default.var_member),

    -- treesitter constant
    hl.fg("@constant", theme.syntax_default.const),
    hl.fg("@boolean", theme.syntax_default.const),
    hl.fg("@number", theme.syntax_default.const),

    -- treesitter punctuation
    hl.fg("@operator", theme.syntax_default.punctuation),
    hl.fg("@punctuation.bracket", theme.syntax_default.punctuation),
    hl.fg("@punctuation.special", theme.syntax_default.punctuation),
    hl.fg("@punctuation.delimiter", theme.syntax_default.punctuation),
    hl.fg("@constructor", theme.syntax_default.punctuation),

    -- treesitter func
    hl.fg("@function", theme.syntax_default.func_def),
    hl.fg("@function.method", theme.syntax_default.func_def),
    hl.fg("@function.call", theme.syntax_default.func_call),
    hl.fg("@function.method.call", theme.syntax_default.func_call),
    hl.fg("@variable.parameter", theme.syntax_default.func_param),

    -- treesitter string
    hl.fg("@string", theme.syntax_default.string),
    hl.fg("@character", theme.syntax_default.string),
    hl.fg("@string.escape", theme.syntax_default.string_escape, { bold = true }),
    hl.fg("@string.special", theme.syntax_default.string_escape, { bold = true }),
    hl.fg("@string.regexp", theme.syntax_default.string_escape, { bold = true }),

    -- treesitter comment
    hl.fg("@comment", theme.syntax_default.comment),
    hl.fg("@comment.todo", theme.diagnostic.hint),
    hl.fg("@comment.note", theme.diagnostic.hint),
    hl.fg("@comment.warning", theme.diagnostic.warn),
    hl.fg("@comment.error", theme.diagnostic.error),
    hl.fg("@comment.documentation", theme.syntax_default.comment),

    -- treesitter markup
    hl.fg("@markup.heading", theme.ui.fg_title),
    hl.fg("@markup.quote", p.gray6),
    hl.fg("@markup.strong", p.gray4),
    hl.fg("@markup.italic", p.gray4),
    hl.fg("@markup.strikethrough", p.gray4),
    hl.op("@markup.underline", { underline = true }),

    hl.fg("@markup.list", p.gray4),
    hl.fg("@markup.list.checked", theme.syntax_default.string_escape, { bold = true }),
    hl.fg("@markup.list.unchecked", p.coquelicot),

    hl.fg("@markup.link", p.gray6),
    hl.fg("@markup.link.label", p.gray6),
    hl.fg("@markup.link.url", p.gray4),

    hl.fg("@markup.math", p.zinnia),

    -- treesitter tags
    hl.fg("@tag", theme.syntax_default.tag),
    hl.fg("@tag.delimiter", theme.syntax_default.tag),
    hl.fg("@tag.attribute", p.gray4),

    -- treesitter builtin
    hl.fg("@type.builtin", theme.syntax_default.type_primitive),
    hl.fg("@tag.builtin", theme.syntax_default.tag),
    hl.fg("@variable.builtin", theme.syntax_default.var),
    hl.fg("@function.builtin", theme.syntax_default.builtin),
    hl.fg("@module.builtin", theme.syntax_default.builtin),
    hl.fg("@constant.builtin", theme.syntax_default.const_builtin),

    -- treesitter diff
    hl.fg("@diff.pluss", theme.diff.add),
    hl.fg("@diff.minus", theme.diff.delete),
    hl.fg("@diff.delta", theme.diff.change),

    -- lsp links to treesitter
    hl.ln("@lsp.type.keyword", "@keyword"),
    hl.ln("@lsp.type.function", "@function"),
    hl.ln("@lsp.type.variable", "@variable"),
    hl.ln("@lsp.type.operator", "@operator"),
    hl.ln("@lsp.type.type", "@type"),
    hl.ln("@lsp.type.string", "@string"),
    hl.ln("@lsp.type.number", "@number"),
    hl.ln("@lsp.type.boolean", "@boolean"),
    hl.ln("@lsp.type.enumMember", "@variable.member"),

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
    hl.fg("@string.special.symbol.clojure", theme.syntax_default.type),
    hl.ln("lispFunc", "@variable.parameter"),
    hl.ln("lispSymbol", "@variable"),
    hl.ln("lispDecl", "@keyword"),

    -- zsh
    hl.fg("zshFunction", theme.syntax_default.func_def),

    -- json, yaml, toml
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

    -- tex
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
    hl.fg("markdownCodeDelimiter", p.bruyere),
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

    -- todo-comments.nvim
    hl.bg("TodoBgTODO", theme.p.lis),
    hl.fg("TodoFgTODO", theme.p.lis, { bold = true }),
    hl.op("TodoSignTODO", { bold = true }),

    hl.bg("TodoBgNOTE", theme.p.bleuet),
    hl.fg("TodoFgNOTE", theme.p.bleuet, { bold = true }),
    hl.op("TodoSignNOTE", { bold = true }),

    hl.bg("TodoBgWARN", theme.p.zinnia),
    hl.fg("TodoFgWARN", theme.p.zinnia, { bold = true }),
    hl.op("TodoSignWARN", { bold = true }),
  }
end
