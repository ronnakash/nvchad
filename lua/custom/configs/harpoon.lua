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

    local conf = require("telescope.config").values
    M.toggle_telescope = function (harpoon_files)

      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()

    end

  -- define keymaps
    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)

    vim.keymap.set("n", "<a-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<C-e>", function() M.toggle_telescope(harpoon:list()) end)

    vim.keymap.set("n", "<a-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<a-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<a-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<a-4>", function() harpoon:list():select(4) end)

    vim.keymap.set("n", "<a-9>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<a-0>", function() harpoon:list():next() end)
end


-- for cheatsheet
M.getKeymaps = function ()
  return {
    plugin = true,
    n = {
      ["<leader>a"] = { function() M.harpoon:list():append() end, "append"},
      ["<C-e>"] = { function() M.harpoon.ui:toggle_quick_menu(M.harpoon:list()) end, "toggle harpoon telescope menu" },
      ["<a-e>"] = { function() M.toggle_telescope(M.harpoon:list()) end, "toggle harpoon quick menu" },
      ["<a-1>"] = { function() M.harpoon:list():select(1) end, "select 1" },
      ["<a-2>"] = { function() M.harpoon:list():select(2) end, "select 2" },
      ["<a-3>"] = { function() M.harpoon:list():select(3) end, "select 3" },
      ["<a-4>"] = { function() M.harpoon:list():select(4) end, "select 4" },
      ["<a-9>"] = { function() M.harpoon:list():prev() end, "prev" },
      ["<a-0>"] = { function() M.harpoon:list():next() end, "next" },
    },
  }
end

return M
