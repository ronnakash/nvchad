local M = {}

M.opts = {
  icons = false,
  fold_open = "v", -- icon used for open folds
  fold_closed = ">", -- icon used for closed folds
  indent_lines = false, -- add an indent guide below the fold icons
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
