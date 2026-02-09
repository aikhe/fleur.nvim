local M = {}

---@class FleurConfig
M.defaults = {
  mode = "dark",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    strings = {},
  },
  plugins = {
    git_signs = true,
    mini = true,
    neo_tree = true,
    oil = true,
    telescope = true,
    which_key = true,
  },
  on_colors = function(_) end,
  on_highlights = function(_, _) end,
}

---@type FleurConfig
M.options = {}

---@param opts? FleurConfig
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

return M
