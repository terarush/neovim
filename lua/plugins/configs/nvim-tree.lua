require("nvim-tree").setup {
  view = {
    width = 35,
    side = "left",
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "name",
    indent_markers = {
      enable = true,
      inline_arrows = true,
    },
    icons = {
      web_devicons = {
        file = { enable = true },
        folder = { enable = false },
      },
      git_placement = "before",
      modified_placement = "after",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        git = true,
        modified = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          untracked = "★",
          deleted = "",
        },
      },
    },
  },
  filters = {
    dotfiles = false,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
  hijack_netrw = true,
}

