local p = require("fleur.palette.dark")

local lualine_theme = {
  normal = {
    a = { bg = p.gray3, fg = p.gray7, gui = "bold" },
    b = { bg = p.gray3, fg = p.gray7 },
    c = { bg = p.gray3, fg = p.gray7 },
  },
  insert = {
    a = { bg = p.stem, fg = p.black, gui = "bold" },
    b = { bg = p.gray3, fg = p.gray7 },
    c = { bg = p.gray3, fg = p.gray7 },
  },
  command = {
    a = { bg = p.tulip, fg = p.black, gui = "bold" },
    b = { bg = p.gray3, fg = p.gray7 },
    c = { bg = p.gray3, fg = p.gray7 },
  },
  visual = {
    a = { bg = p.gray8, fg = p.black, gui = "bold" },
    b = { bg = p.gray3, fg = p.gray7 },
    c = { bg = p.gray3, fg = p.gray7 },
  },
  replace = {
    a = { bg = p.rose, fg = p.black, gui = "bold" },
    b = { bg = p.gray3, fg = p.gray7 },
    c = { bg = p.gray3, fg = p.gray7 },
  },
  inactive = {
    a = { bg = p.gray2, fg = p.gray4, gui = "bold" },
    b = { bg = p.gray2, fg = p.gray4 },
    c = { bg = p.gray2, fg = p.gray4 },
  },
}

return lualine_theme
