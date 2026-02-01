local M = {}

function M.reload()
  for name, _ in pairs(package.loaded) do
    if name:match "^fleur" then package.loaded[name] = nil end
  end
  vim.cmd "colorscheme fleur"
end

return M
