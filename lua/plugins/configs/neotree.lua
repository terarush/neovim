require("neo-tree").setup {
  git_status = {
    symbols = {
      added = "+",
      modified = "~",
      deleted = "-",
      renamed = ">",
      untracked = "?",
      ignored = "!",
      unstaged = "*",
      staged = "✔",
      conflict = "⚠",
    },
  },
  window = {
    position = "left",
  },
  filesystem = {
    filtered_items = {
      hide_gitignored = true,
      hide_dotfiles = false,
      hide_by_name = {
        "node_modules",
        "vendor",
        "venv",
      },
    },
  },
}
