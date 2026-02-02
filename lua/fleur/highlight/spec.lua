---@class FleurHighlightSpec : vim.api.keyset.highlight
---@field name string


local M = {}

---@param name string
---@param fg string
---@param bg string
---@param opts? table
---@return FleurHighlightSpec
M.co = function(name, fg, bg, opts)
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
M.fg = function(name, fg, opts) return M.co(name, fg, "NONE", opts) end

---@param name string
---@param bg string
---@return FleurHighlightSpec
M.bg = function(name, bg) return M.co(name, "NONE", bg) end

---@param name string
---@param opts table
---@return FleurHighlightSpec
M.op = function(name, opts) return M.co(name, "NONE", "NONE", opts) end

---@param name string
---@param link string
---@return FleurHighlightSpec
M.ln = function(name, link) return { name = name, link = link } end

return M
