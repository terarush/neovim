require("neo-tree").setup {
  git_status = {
    symbols = {
      added = "",
      modified = "",
      deleted = "",
      renamed = "",
      untracked = "★",
      ignored = "◌",
      unstaged = "✗",
      staged = "✓",
      conflict = "",
    },
  },
  window = {
    position = "left",
    width = 40,
    mappings = {
      ["<space>"] = "toggle_node",
      ["<cr>"] = "open",
      ["<esc>"] = "revert_preview",
      ["P"] = { "toggle_preview", config = { use_float = true } },
      ["l"] = "focus_preview",
      ["S"] = "split_with_window_picker",
      ["s"] = "vsplit_with_window_picker",
      ["t"] = "open_tabnew",
      ["C"] = "close_node",
    },
  },
  filesystem = {
    follow_current_file = {
      enabled = true,
    },
    hijack_netrw_behavior = "open_current",
    filtered_items = {
      hide_gitignored = true,
      hide_dotfiles = false,
      hide_by_name = {
        "node_modules",
        "vendor",
        "venv",
        ".git",
        ".DS_Store",
      },
    },
  },
  buffers = {
    follow_current_file = {
      enabled = true,
    },
    group_empty_dirs = true,
    show_unloaded = true,
  },
  diagnostics = {
    symbols = {
      hint = "",
      info = "",
      warn = "",
      error = "",
    },
  },
  default_component_configs = {
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      default = "",
      symlink = "",
    },
    modified = {
      symbol = "",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
    },
  },
}
