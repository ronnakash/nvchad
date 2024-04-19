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
        "gopls",
        "hclfmt",
        "jdtls",
        "typescript-language-server",
        "eslint-lsp",
        "html"
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function (_, opts)
      local current_file = vim.fn.expand('%:p') -- Get current buffer's full path
      local module_root = vim.fn.systemlist('go list -m -f {{.Dir}}') -- Get module root directory

      if #module_root > 0 then
        opts.root_dir = module_root[1]
      else
        opts.root_dir = vim.fn.fnamemodify(current_file, ':h')
      end

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
    -- lazy = false,
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
    lazy = false,
    opts = function ()
      return require("custom.configs.trouble").opts
    end,
  },
  {
    "ray-x/go.nvim",
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()'
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    opts = {
    },
  },
  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function ()
      local notify = require("notify")
      notify.setup({
        -- transparent bg
        background_colour = "#000000",
      })
      vim.notify = notify
    end,
    opts = {},
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    -- TODO: figure out how to use it
    "tpope/vim-fugitive",
    -- lazy = false,
  },
  {
    -- TODO: https://www.youtube.com/watch?v=C7juSZsM2Fg
    "mfussenegger/nvim-jdtls",
    lazy = false,
    -- config = require("custom.configs.nvim-jdtls").config
  },
}

return plugins
