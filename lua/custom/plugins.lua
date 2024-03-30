local harpoon_confing = require("custom.configs.harpoon")
local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "gopls"
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function (_, opts)
      require("gopher").setup(opts)
    end,
    build = function ()
      vim.cmd [[silent! GoInstallDeps]]
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {},
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    event = "VeryLazy",
    config = harpoon_confing.setup
    -- config = function ()
    --   local harpoon = require("harpoon")
    --   harpoon.setup()
    --
    --   vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
    --   vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    --
    --   vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    --   vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
    --   vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
    --   vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
    --
    --   -- Toggle previous & next buffers stored within Harpoon list
    --   vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    --   vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    -- end,
  },
    {
    "abeldekat/harpoonline",
    lazy = true,
    config = function()
      -- the setup
    end,
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function ()
      require("auto-session").setup({
    -- end,
    config = function ()
      local harpoon = require("harpoon")
      harpoon.setup()

      vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    end,
        -- cwd_change_handling = {
        --   restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
        --   pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
        --   post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
        --     require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
        --   end,
        -- }
      })
    end
  },
}

return plugins
