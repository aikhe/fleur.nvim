local M = {}

function M.reload()
  -- save user opts before wiping modules
  local saved_opts = vim.deepcopy(require("fleur.config").options)

  for name, _ in pairs(package.loaded) do
    if name:match "^fleur" then package.loaded[name] = nil end
  end
  M.cache.clear()

  -- re-apply saved opts so reload uses the user's settings
  require("fleur").setup(saved_opts)
  vim.cmd "colorscheme fleur"
end

M.cache = {}

--- Returns the path to the cache file for a given key
---@param key string
---@return string
function M.cache.file(key)
  return vim.fs.joinpath(vim.fn.stdpath "cache", "fleur-" .. key .. ".json")
end

--- Safely read and decode the cached file from disk
---@param key string
---@return FleurCache|nil
function M.cache.read(key)
  local file = io.open(M.cache.file(key), "r")
  if not file then return nil end
  local data = file:read "*a"
  file:close()

  local is_ok, ret = pcall(
    vim.json.decode,
    data,
    { luanil = { object = true, array = true } }
  )
  return is_ok and ret or nil
end

--- Encodes and writes data to the cached directory
---@param key string
---@param data FleurCache
function M.cache.write(key, data)
  local fname = M.cache.file(key)
  vim.fn.mkdir(vim.fs.dirname(fname), "p")
  local file = assert(io.open(fname, "w+"))
  file:write(vim.json.encode(data))
  file:close()
end

--- Deletes Fleur's cache files from the system
function M.cache.clear()
  for _, style in ipairs { "dark", "light" } do
    vim.uv.fs_unlink(M.cache.file(style))
  end
end

return M
