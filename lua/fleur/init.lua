-- lua/fleur/init.lua

local M = {}

function M.setup()
  local palette = require("fleur.palette")
  require("fleur.highlights").setup(palette)
end

return M
