local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlight[]
local treesitter = function(_, _, theme)
  return {
    -- treesitter syntax
    hl.fg("@keyword", theme.syntax_default.keyword),
    hl.fg("@keyword.return", theme.syntax_default.keyword_return),
    hl.fg("@keyword.exception", theme.syntax_default.keyword_exception),
    hl.fg("@attribute", theme.syntax_default.keyword),
    hl.fg("@type", theme.syntax_default.type),
    hl.fg("@type.definition", theme.syntax_default.type_def),
    hl.fg("@property", theme.p.gray7),
    hl.fg("@label", theme.ui.fg_title),

    -- treesitter variable
    hl.fg("@variable", theme.syntax_default.var),
    hl.fg("@variable.member", theme.syntax_default.var_member),

    -- treesistter constant
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

    -- treesiter string
    hl.fg("@string", theme.syntax_default.string),
    hl.fg("@character", theme.syntax_default.string),
    hl.fg(
      "@string.escape",
      theme.syntax_default.string_escape,
      { bold = true }
    ),
    hl.fg(
      "@string.special",
      theme.syntax_default.string_escape,
      { bold = true }
    ),
    hl.fg(
      "@string.regexp",
      theme.syntax_default.string_escape,
      { bold = true }
    ),

    -- treesitter comment
    hl.fg("@comment", theme.syntax_default.comment),
    hl.fg("@comment.todo", theme.diagnostic.hint),
    hl.fg("@comment.note", theme.diagnostic.hint),
    hl.fg("@comment.warn", theme.diagnostic.warn),
    hl.fg("@comment.error", theme.diagnostic.error),
    hl.fg("@comment.documentation", theme.syntax_default.comment),

    -- treesitter markup
    hl.fg("@markup.heading", theme.ui.fg_title),
    hl.fg("@markup.quote", theme.p.gray6),
    hl.fg("@markup.strong", theme.p.gray4),
    hl.fg("@markup.italic", theme.p.gray4),
    hl.fg("@markup.strikethrough", theme.p.gray4),
    hl.op("@markup.underline", {
      underline = true,
    }),

    hl.fg("@markup.list", theme.p.gray4),
    hl.fg(
      "@markup.list.checked",
      theme.syntax_default.string_escape,
      { bold = true }
    ),
    hl.fg("@markup.list.unchecked", theme.p.rose),

    hl.fg("@markup.link", theme.p.gray6),
    hl.fg("@markup.link.label", theme.p.gray6),
    hl.fg("@markup.link.url", theme.p.gray4),

    hl.fg("@markup.math", theme.p.tulip),

    -- treesitter tags
    hl.fg("@tag", theme.syntax_default.tag),
    hl.fg("@tag.delimiter", theme.syntax_default.tag),
    hl.fg("@tag.attribute", theme.p.gray4),

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

    -- lsp links to treesiter
    hl.ln("@lsp.type.keyword", "@keyword"),
    hl.ln("@lsp.type.function", "@function"),
    hl.ln("@lsp.type.variable", "@variable"),
    hl.ln("@lsp.type.operator", "@operator"),
    hl.ln("@lsp.type.type", "@type"),
    hl.ln("@lsp.type.string", "@string"),
    hl.ln("@lsp.type.number", "@number"),
    hl.ln("@lsp.type.boolean", "@boolean"),
    hl.ln("@lsp.type.enumMember", "@variable.member"),
  }
end

return treesitter
