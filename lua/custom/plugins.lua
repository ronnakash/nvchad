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
    config = require("custom.configs.harpoon").setup,
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup({})
    end
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function ()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs  = { "~/" },
      })
    end
  },
  {
    "folke/trouble.nvim",
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = function ()
      return require("custom.configs.trouble").opts
    end,
  },
  {
    "ray-x/go.nvim",
    -- dependencies = {  -- optional packages
    --   "ray-x/guihua.lua",
    --   "neovim/nvim-lspconfig",
    --   "nvim-treesitter/nvim-treesitter",
    -- },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },

}

return plugins
