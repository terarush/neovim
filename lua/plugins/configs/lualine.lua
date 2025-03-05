require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = {
      normal = {
        a = { fg = "#0d1117", bg = "#58a6ff", gui = "bold" },
        b = { fg = "#c9d1d9", bg = "#21262d" },
        c = { fg = "#c9d1d9", bg = "#0d1117" },
      },
      insert = {
        a = { fg = "#0d1117", bg = "#3fb950", gui = "bold" },
        b = { fg = "#c9d1d9", bg = "#21262d" },
        c = { fg = "#c9d1d9", bg = "#0d1117" },
      },
      visual = {
        a = { fg = "#0d1117", bg = "#bc8cff", gui = "bold" },
        b = { fg = "#c9d1d9", bg = "#21262d" },
        c = { fg = "#c9d1d9", bg = "#0d1117" },
      },
      replace = {
        a = { fg = "#0d1117", bg = "#ff7b72", gui = "bold" },
        b = { fg = "#c9d1d9", bg = "#21262d" },
        c = { fg = "#c9d1d9", bg = "#0d1117" },
      },
      command = {
        a = { fg = "#0d1117", bg = "#d29922", gui = "bold" },
        b = { fg = "#c9d1d9", bg = "#21262d" },
        c = { fg = "#c9d1d9", bg = "#0d1117" },
      },
      inactive = {
        a = { fg = "#c9d1d9", bg = "#0d1117" },
        b = { fg = "#c9d1d9", bg = "#0d1117" },
        c = { fg = "#c9d1d9", bg = "#0d1117" },
      },
    },
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    global_status = true,
  },
}
