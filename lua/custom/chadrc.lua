---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  -- transparency = true,
  theme_toggle = { 'catppuccin', 'tokyodark'},
  tabufline = {
    -- show_numbers = true,
  },
  statusline = {
    -- theme = "vscode_colored",
    separator_style = "default",
    lspprogress_len = 1000,
    bg = '#FFFFFF', -- Set the background color here, for example, black
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
