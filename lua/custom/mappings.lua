local M = {}

M.harpoon = require("custom.configs.harpoon").getKeymaps()

M.golang = {
  n = {
    ["<leader>goeds"] = {
      [[0WWveyoif <esc>pa != nil {<CR><Tab>return fmt.Errorf("placeholder: %w", <esc>pa)<CR>}<esc>kf"lves]],
      "if-err with fmt.Errorf for two terms, single return value"
    },
    ["<leader>goedd"] = {
      [[0WWveyoif <esc>pa != nil {<CR><Tab>return nil, fmt.Errorf("placeholder: %w", <esc>pa)<CR>}<esc>kf"lves]],
      "if-err with fmt.Errorf for two terms, double return value"
    },
    ["<leader>goess"] = {
      [[0wv$hdOif <esc>p0wwveyA; <esc>pa != nil {<CR>}<esc>k0f;wvep<esc>oreturn fmt.Errorf("placeholder: %w", <esc>pa)<esc>0f"lves]],
      "if-err with fmt.Errorf for one term, single return value"
    },
    ["<leader>goesd"] = {
      [[0wv$hdOif <esc>p0wwveyA; <esc>pa != nil {<CR>}<esc>k0f;wvep<esc>oreturn nil, fmt.Errorf("placeholder: %w", <esc>pa)<esc>0f"lves]],
      "if-err with fmt.Errorf for one term, double return value"
    },
    ["<leader>gosf"] = {
      "<cmd> GoFillStruct <CR>",
      "Fill go struct",
    },
    ["<leader>gosj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gosy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add json struct tags",
    },
    ["<leader>gor"] = {
      "<cmd> GoRename <CR>",
      "Rename go element",
    },
  },
}

M.trouble = require("custom.configs.trouble").mappings

M.telescope = {
  plugin = true,
  n = {
    ["<leader>fi"] = {
      "<cmd> InspectTree <CR>",
      "InspectTree"
    },
  },
}

M.vim_tmux_navigator = {
  plugin = true,
  n = {
     ["<c-h>"] = { "<cmd><C-U>TmuxNavigateLeft<cr>", "window left"} ,
     ["<c-j>"] = { "<cmd><C-U>TmuxNavigateDown<cr>", "window down"} ,
     ["<c-k>"] = { "<cmd><C-U>TmuxNavigateUp<cr>", "window up"} ,
     ["<c-l>"] = { "<cmd><C-U>TmuxNavigateRight<cr>", "window right"} ,
     ["<c-\\>"] = { "<cmd><C-U>TmuxNavigatePrevious<cr>", "window previous"} ,
  },
}

M.goto_preview = {
  -- plugin = true,
  n = {
    ["gpd"] = {
      "<cmd> lua require('goto-preview').goto_preview_definition() <CR>",
      "definition popup",
    },
    ["gpt"] = {
      "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
      "type definition popup",
    },
    ["gpi"] = {
      "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
      "implementation popup",
    },
    ["gpD"] = {
      "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
      "declaration popup",
    },
    ["gP"] = {
      "<cmd>lua require('goto-preview').close_all_win()<CR>",
      "close all windows",
    },
    ["gpr"] = {
      "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
      "references popup",
    },
  }
}

vim.api.nvim_set_keymap('n', '<F5>', ':UndotreeToggle <CR>', { noremap = true, silent = true, desc = "toggle undotree"})
M.undotree = {
  plugin = true,
  n = {
    ["<F5>"] = {
      "<cmd> UndotreeToggle <CR>",
      "toggle undotree"
    },
  }
}

return M
