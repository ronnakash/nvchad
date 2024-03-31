local options = {
  filters = {
    dotfiles = false,
    exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    -- update_root = true,
  },
  view = {
    adaptive_size = false,
    side = "left",
    width = 30,
    preserve_window_proportions = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "name",

    indent_markers = {
      enable = true,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "󰬔",
          staged = "󰬚",
          unmerged = "",
          renamed = "➜",
          untracked = "󰬕",
          deleted = "󰬋",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  }
}

vim.cmd([[
  :hi      NvimTreeGitNewIcon    guifg=NvimLightGreen  
  :hi      NvimTreeGitNew    guifg=NvimLightGreen  
  :hi      NvimTreeOpenedHL    gui=underline
  :hi      NvimTreeGitFileDirtyHL    guifg=#fae3b0
  :hi      NvimTreeGitDirtyIcon    guifg=#fae3b0
  :hi      NvimTreeGitFileStagedHL    guifg=NvimLightGreen
  :hi      NvimTreeGitStagedIcon    guifg=NvimLightGreen
  :hi      NvimTreeGitStagedIcon    guifg=NvimLightGreen
]])

return options
