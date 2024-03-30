local M = {}

M.setup = function ()
    local harpoon = require("harpoon")
    harpoon.setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<a-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<a-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<a-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<a-4>", function() harpoon:list():select(4) end)
    vim.keymap.set("n", "<a-4>", function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<a-9>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<a-0>", function() harpoon:list():next() end)
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
