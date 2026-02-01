---@class FleurPalette
---@field bg string
---@field fg string
---@field accent string

local M = {}

---@param variant? string
---@return FleurPalette
function M.get(variant)
  variant = variant or "dark"
  return require("fleur.palette." .. variant)
end

return M
