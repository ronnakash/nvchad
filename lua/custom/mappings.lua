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

return M
