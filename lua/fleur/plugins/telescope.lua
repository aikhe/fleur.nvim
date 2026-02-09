local hl = require "fleur.highlight.hl"

---@param theme FleurTheme
---@return FleurHighlightGroup
return function(theme)
  local telescope = theme.plugin_telescope
  return {
    plugin_name = "telescope",
    highlight = {
      hl.co("TelescopeNormal", telescope.fg_normal, telescope.bg_normal),
      hl.co("TelescopeBorder", telescope.fg_border, telescope.bg_normal),
      hl.ln("TelescopePromptBorder", "TelescopeBorder"),
      hl.ln("TelescopeResultsBorder", "TelescopeBorder"),
      hl.ln("TelescopePreviewBorder", "TelescopeBorder"),

      hl.op("TelescopeMatching", { italic = true }),
      hl.co("TelescopeSelection", telescope.fg_normal, telescope.bg_selection),
      hl.co("TelescopePreviewLine", telescope.fg_preview, telescope.bg_preview),
      hl.ln("TelescopePreviewMatch", "TelescopePreviewLine"),

      hl.fg("TelescopeTitle", telescope.fg_border),
      hl.ln("TelescopePromptTitle", "TelescopeTitle"),
      hl.ln("TelescopeResultsTitle", "TelescopeTitle"),
      hl.ln("TelescopePreviewTitle", "TelescopeTitle"),
      hl.ln("TelescopeMultiSelection", "TelescopeTitle"),
      hl.ln("TelescopeMultiIcon", "TelescopeTitle"),

      hl.ln("TelescopePromptPrefix", "TelescopeTitle"),
      hl.fg("TelescopePromptCounter", telescope.fg_counter),

      hl.co(
        "TelescopeResultsNormal",
        telescope.fg_results,
        telescope.bg_normal
      ),
      hl.ln("TelescopeResultsSpecialComment", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsDiffUntracked", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsIdentifier", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsDiffDelete", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsDiffChange", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsVariable", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsOperator", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsFunction", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsConstant", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsDiffAdd", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsComment", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsSymbol", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsStruct", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsNumber", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsMethod", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsLineNr", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsField", "TelescopeResultsNormal"),
      hl.ln("TelescopeResultsClass", "TelescopeResultsNormal"),
    },
  }
end
