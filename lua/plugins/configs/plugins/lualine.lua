require("lualine").setup {
  options = {
    icons_enabled = true,
    -- theme = "auto",
    theme = {
      normal = {
        a = { fg = "#1a1b26", bg = "#7aa2f7", gui = "bold" },
        b = { fg = "#c0caf5", bg = "#2e3440" },
        c = { fg = "#a9b1d6", bg = "#1a1b26" },
      },
      insert = {
        a = { fg = "#1a1b26", bg = "#9ece6a", gui = "bold" },
        b = { fg = "#c0caf5", bg = "#2e3440" },
        c = { fg = "#a9b1d6", bg = "#1a1b26" },
      },
      visual = {
        a = { fg = "#1a1b26", bg = "#bb9af7", gui = "bold" },
        b = { fg = "#c0caf5", bg = "#2e3440" },
        c = { fg = "#a9b1d6", bg = "#1a1b26" },
      },
      replace = {
        a = { fg = "#1a1b26", bg = "#f7768e", gui = "bold" },
        b = { fg = "#c0caf5", bg = "#2e3440" },
        c = { fg = "#a9b1d6", bg = "#1a1b26" },
      },
      command = {
        a = { fg = "#1a1b26", bg = "#e0af68", gui = "bold" },
        b = { fg = "#c0caf5", bg = "#2e3440" },
        c = { fg = "#a9b1d6", bg = "#1a1b26" },
      },
      inactive = {
        a = { fg = "#a9b1d6", bg = "#1a1b26" },
        b = { fg = "#a9b1d6", bg = "#1a1b26" },
        c = { fg = "#a9b1d6", bg = "#1a1b26" },
      },
    },
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    global_status = true,
  },
  sections = {
    lualine_b = { "branch", "diff", "diagnostics", "filesize" },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "nvim-tree", "quickfix" },
}
