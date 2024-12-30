---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "ayu_dark",
  transparency = true,
  hl_override = {
    Comment = { italic = false },
    ["@comment"] = { italic = false },
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
