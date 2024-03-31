local M = {}

M.init = function ()
  if M.harpoon == nil then
    M.harpoon = require("harpoon")
  end
end

M.setup = function ()
  M.init()
    local harpoon = M.harpoon
    harpoon.setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<a-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<a-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<a-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<a-4>", function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<a-9>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<a-0>", function() harpoon:list():next() end)
end

M.getKeymaps = function ()
  return {
    plugin = true,
    n = {
      ["<leader>a"] = { function() M.harpoon:list():append() end, "append"},
      ["<a-1>"] = { function() M.harpoon:list():select(1) end, "select 1" },
      ["<a-2>"] = { function() M.harpoon:list():select(2) end, "select 2" },
      ["<a-3>"] = { function() M.harpoon:list():select(3) end, "select 3" },
      ["<a-4>"] = { function() M.harpoon:list():select(4) end, "select 4" },
      ["<a-9>"] = { function() M.harpoon:list():prev() end, "prev" },
      ["<a-0>"] = { function() M.harpoon:list():next() end, "next" },
      ["<C-e>"] = { function() M.harpoon.ui:toggle_quick_menu(M.harpoon:list()) end, "toggle harpoon quick menu" },
    },
  }
end

return M


































-- local harpoon = require "harpoon"
--
-- -- REQUIRED
-- harpoon:setup()
-- -- REQUIRED
--
-- vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--
-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
--
-- -- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- local M = {}
--
-- M.mappings = {
--   plugin = true,
--   -- n = {
--   --   ["<leader>a"] = {
--   --     function() harpoon:list():append() end,
--   --     "placeholer"
--   --   }
--   -- }
-- }
--
-- return M
