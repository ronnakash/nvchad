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
  -- {
  --   "catppuccin/nvim",
  --   name = "catppueccin",
  --   priority = 1000,
  -- },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
    -- {
    --   "christoomey/vim-tmux-navigator",
    --   lazy = false,
    -- },
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function ()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs  = { "~/" },
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
