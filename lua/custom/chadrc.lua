---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  transparency = true,
  theme_toggle = { 'catppuccin', 'tokyodark'},
  tabufline = {
    -- show_numbers = true,
  },
  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
    lspprogress_len = 1000,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
