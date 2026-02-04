local config = require("fleur.config").options
local dark_color = require "fleur.palette.dark"
local light_color = require "fleur.palette.light"
local create_theme = require "fleur.palette"
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
local apply_highlights = function(groups)
  for _, hl in ipairs(groups) do
    local name = hl.name
    hl.name = nil
    vim.api.nvim_set_hl(0, name, hl --[[@as vim.api.keyset.highlight]])
  end
end

---@param opt table
---@param theme FleurTheme
local load_variant = function(opt, theme)
  theme.syntax = theme.syntax_default

  -- special
  if opt.theme == "lisianthus" then theme.syntax = theme.syntax_lisianthus end

  if opt.theme == "lulumi" then theme.syntax = theme.syntax_lulumi end

  theme.syntax = vim.tbl_extend("force", theme.syntax, theme.syntax_tweak)
end

M.load = function(opts)
  opts = opts or {}

  if vim.tbl_isempty(config) then
    M.setup {}
    config = require("fleur.config").options
  end

  -- apply theme & variant
  local mode = opts.mode or config.mode
  local palette_base = mode == "light" and light_color or dark_color
  local theme = create_theme(palette_base)
  load_variant(opts, theme)
  local p = change.apply(palette_base, config)
  theme.p = p

  -- clear existing highlights
  if vim.g.colors_name then vim.cmd "hi clear" end
  vim.o.termguicolors = true
  vim.g.colors_name = "fleur"
  vim.o.background = mode

  -- get hl groups
  local highlight_groups = highlights.get(p, config, theme)
  local groups = {}

  for _, group in ipairs(highlight_groups) do
    if
      group.dont_skip
      or (group.plugin_name and config.plugins[group.plugin_name])
    then
      vim.list_extend(groups, group.highlight)
    end
  end

  -- user modify hl
  local hl_map = {}
  for _, hl in ipairs(groups) do
    hl_map[hl.name] = hl
  end
  config.on_highlights(hl_map, p)

  -- apply hl
  apply_highlights(groups)
end

return M
