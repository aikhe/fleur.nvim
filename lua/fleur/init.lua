local config = require("fleur.config").options
local palette = require("fleur.palette").get(config.variant)
local change = require "fleur.change"
local highlights = require "fleur.highlight"

local M = {}

---@param opts? FleurConfig
M.setup = function(opts)
  require("fleur.config").setup(opts)
  vim.api.nvim_create_user_command(
    "FleurReload",
    function() require("fleur.utils").reload() end,
    {}
  )
end

---@param groups FleurHighlightSpec[]
M.apply_highlights = function(groups)
  for _, hl in ipairs(groups) do
    local name = hl.name
    hl.name = nil
    vim.api.nvim_set_hl(0, name, hl)
  end
end

M.load = function()
  if vim.tbl_isempty(config) then
    M.setup {}
    config = require("fleur.config").options
  end

  -- apply tweaks to palette
  local p = change.apply(palette, config)

  -- clear existing highlights
  if vim.g.colors_name then vim.cmd "hi clear" end
  vim.o.termguicolors = true
  vim.g.colors_name = "fleur"

  -- get core hl groups
  local groups = highlights.get(p, config)

  -- add plugin hl
  if config.plugins.telescope then
    vim.list_extend(groups, require "fleur.plugins.telescope"(p))
  end

  -- allow user to modify hl
  local hl_map = {}
  for _, hl in ipairs(groups) do
    hl_map[hl.name] = hl
  end
  config.on_highlights(hl_map, p)

  -- apply hl
  apply_highlights(groups)
end

return M
