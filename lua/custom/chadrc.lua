---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  transparency = true,
  theme_toggle = { 'catppuccin', 'tokyodark'},
  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
    order = { "mode", "harpoon", "file", "diagnostics", "git",
      "%=", "lsp_msg", "%=", "lsp", "cursor", "cwd" },
    modules = {
      -- Add a custom harpoon module, using the file background.
      -- harpoon = function()
      --   -- return "%#St_file_bg# " .. require("harpoonline").format() .. " "
      -- end,
      harpoon = "harpoonline"
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
