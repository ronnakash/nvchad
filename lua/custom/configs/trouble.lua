local M = {}

M.opts = {
  icons = false,
  indent_lines = false, -- add an indent guide below the fold icons
  fold_open = "",
  fold_closed = "",
  action_keys = {
    toggle_mode = "m"
  },
  -- signs = {
  --   -- icons / text used for a diagnostic
  --   error = "",
  --   warning = "",
  --   hint = "",
  --   information = "",
  -- },
  use_diagnostic_signs = true, -- enabling this will use the signs defined in your lsp client
}


M.mappings = {
  n = {
    ["<a-t>"] = {
      "<cmd> TroubleToggle workspace_diagnostics <CR>",
      "trouble bottom menu"
    },
    ["<leader>tt"] = {
      "<cmd> TodoTrouble <CR>",
      "todo bottom menu"
    },
  }
}

return M
