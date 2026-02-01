---@class FleurHighlightSpec
---@field name string
---@field bg? string
---@field fg? string
---@field link? string
---@field undercurl? boolean
---@field underline? boolean
---@field sp? string

local M = {}

---@param name string
---@param fg string
---@param bg string
---@param opts? table
---@return FleurHighlightSpec
function M.co(name, fg, bg, opts)
  opts = opts or {}
  return vim.tbl_extend("force", opts, {
    name = name,
    fg = fg,
    bg = bg,
  })
end

---@param name string
---@param fg string
---@param opts? table
---@return FleurHighlightSpec
function M.fg(name, fg, opts)
  return M.co(name, fg, "NONE", opts)
end

---@param name string
---@param bg string
---@return FleurHighlightSpec
function M.bg(name, bg)
  return M.co(name, "NONE", bg)
end

---@param name string
---@param opts table
---@return FleurHighlightSpec
function M.op(name, opts)
  return M.co(name, "NONE", "NONE", opts)
end

---@param name string
---@param link string
---@return FleurHighlightSpec
function M.ln(name, link)
  return { name = name, link = link }
end

return M
