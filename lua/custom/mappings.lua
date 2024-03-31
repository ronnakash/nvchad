local M = {}

M.harpoon = require("custom.configs.harpoon").getKeymaps()

M.golang = {
  n = {
    ["<leader>geds"] = {
      [[0WWveyoif <esc>pa != nil {<CR><Tab>return fmt.Errorf("placeholder: %w", <esc>pa)<CR>}<esc>kf"lves]],
      "if-err with fmt.Errorf for two terms, single return value"
    },
    ["<leader>gedd"] = {
      [[0WWveyoif <esc>pa != nil {<CR><Tab>return nil, fmt.Errorf("placeholder: %w", <esc>pa)<CR>}<esc>kf"lves]],
      "if-err with fmt.Errorf for two terms, double return value"
    },
    ["<leader>gess"] = {
      [[0wv$hdOif <esc>p0wwveyA; <esc>pa != nil {<CR>}<esc>k0f;wvep<esc>oreturn fmt.Errorf("placeholder: %w", <esc>pa)<esc>0f"lves]],
      "if-err with fmt.Errorf for one term, single return value"
    },
    ["<leader>gesd"] = {
      [[0wv$hdOif <esc>p0wwveyA; <esc>pa != nil {<CR>}<esc>k0f;wvep<esc>oreturn nil, fmt.Errorf("placeholder: %w", <esc>pa)<esc>0f"lves]],
      "if-err with fmt.Errorf for one term, double return value"
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gfs"] = {
      "<cmd> GoFillStruct <CR>",
      "Fill go struct",
    },
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add json struct tags",
    },
  }
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
