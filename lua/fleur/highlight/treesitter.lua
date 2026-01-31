local spec = require "fleur.highlight.spec"

---@param theme FleurTheme
---@return FleurHighlightSpec[]
local treesitter = function(_, _, theme)
  return {
    -- treesitter syntax
    spec.fg("@keyword", theme.syntax_default.keyword),
    spec.fg("@keyword.return", theme.syntax_default.keyword_return),
    spec.fg("@keyword.exception", theme.syntax_default.keyword_exception),
    spec.fg("@attribute", theme.syntax_default.keyword),
    spec.fg("@type", theme.syntax_default.type),
    spec.fg("@type.definition", theme.syntax_default.type_def),
    spec.fg("@property", theme.p.gray7),
    spec.fg("@label", theme.ui.fg_title),

    -- treesitter variable
    spec.fg("@variable", theme.syntax_default.var),
    spec.fg("@variable.member", theme.syntax_default.var_member),

    -- treesistter constant
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

    -- treesiter string
    spec.fg("@string", theme.syntax_default.string),
    spec.fg("@character", theme.syntax_default.string),
    spec.fg("@string.escape", theme.syntax_default.string_escape),
    spec.fg("@string.special", theme.syntax_default.string_escape),
    spec.fg("@string.regexp", theme.syntax_default.string_escape),

    -- treesitter comment
    spec.fg("@comment", theme.syntax_default.comment),
    spec.fg("@comment.todo", theme.diagnostic.hint),
    spec.fg("@comment.note", theme.diagnostic.hint),
    spec.fg("@comment.warn", theme.diagnostic.warn),
    spec.fg("@comment.error", theme.diagnostic.error),
    spec.fg("@comment.documentation", theme.syntax_default.comment),

    -- treesitter markup
    spec.fg("@markup.heading", theme.ui.fg_title),
    spec.fg("@markup.quote", theme.p.gray6),
    spec.fg("@markup.strong", theme.p.gray4),
    spec.fg("@markup.italic", theme.p.gray4),
    spec.fg("@markup.strikethrough", theme.p.gray4),
    spec.op("@markup.underline", {
      underline = true,
    }),

    spec.fg("@markup.list", theme.p.gray4),
    spec.fg("@markup.list.checked", theme.syntax_default.string_escape),
    spec.fg("@markup.list.unchecked", theme.p.rose),

    spec.fg("@markup.link", theme.p.gray6),
    spec.fg("@markup.link.label", theme.p.gray6),
    spec.fg("@markup.link.url", theme.p.gray4),

    spec.fg("@markup.math", theme.p.tulip),

    -- treesitter tags
    spec.fg("@tag", theme.syntax_default.tag),
    spec.fg("@tag.delimiter", theme.syntax_default.tag),
    spec.fg("@tag.attribute", theme.p.gray4),

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

    -- lsp links to treesiter
    spec.ln("@lsp.type.keyword", "@keyword"),
    spec.ln("@lsp.type.function", "@function"),
    spec.ln("@lsp.type.variable", "@variable"),
    spec.ln("@lsp.type.operator", "@operator"),
    spec.ln("@lsp.type.type", "@type"),
    spec.ln("@lsp.type.string", "@string"),
    spec.ln("@lsp.type.number", "@number"),
    spec.ln("@lsp.type.boolean", "@boolean"),
    spec.ln("@lsp.type.enumMember", "@variable.member"),
  }
end

return treesitter
