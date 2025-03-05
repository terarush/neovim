---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyonight",
  transparency = true,
  hl_override = {
    -- Normal = { fg = "#c9d1d9", bg = "#0d1117" },
Comment = { fg = "#6e7681", italic = false },
    Keyword = { fg = "#58a6ff" },
    Identifier = { fg = "#d29922" },
    Function = { fg = "#e3b341" },
    String = { fg = "#3fb950" },
    Number = { fg = "#bc8cff" },
    Boolean = { fg = "#bc8cff" },
    Type = { fg = "#ff79c6" },
    Constant = { fg = "#76e3ea" },
    Statement = { fg = "#58a6ff" },
    PreProc = { fg = "#ff79c6" },
    Special = { fg = "#ff79c6" },
    Underlined = { fg = "#58a6ff", underline = true },
    Error = { fg = "#ff7b72" },
    Todo = { fg = "#e3b341", bg = "#0d1117" },
  },
}

M.ui = {
  tabufline = {
    enabled = false,
  },
  statusline = {
    theme = "vscode",
    separator_style = "round",
  },
}

return M
