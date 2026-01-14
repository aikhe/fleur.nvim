-- lua/fleur/highlights.lua

local M = {}

function M.setup(c)
  local groups = {
    -- Base groups
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg },
    FloatBorder = { fg = c.border, bg = c.bg },
    CursorLine = { bg = c.line },
    CursorLineNr = { fg = c.accent, bold = true },
    LineNr = { fg = c.border },
    WinSeparator = { fg = c.border },
    Visual = { bg = c.line },
    Search = { fg = c.bg, bg = c.accent },

    -- Syntax groups
    Comment = { fg = c.comment, italic = true },
    Keyword = { fg = c.keyword },
    String = { fg = c.string },
    Function = { fg = c.accent },
    Identifier = { fg = c.fg },
    Statement = { fg = c.keyword },
    Type = { fg = c.accent },
  }

  for group, highlights in pairs(groups) do
    vim.api.nvim_set_hl(0, group, highlights)
  end
end

return M
