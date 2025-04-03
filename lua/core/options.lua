require "nvchad.options"

-- relativenumber options
vim.wo.relativenumber = true
vim.wo.signcolumn = "auto"
-- termui options
vim.opt.termguicolors = true

-- laststatus options
vim.o.wrap = false
vim.opt.tabstop = 2
vim.opt.lazyredraw = true
vim.opt.updatetime = 300

-- vim.opt.fillchars = {}
-- auto start
-- vim.cmd [[
--   autocmd BufEnter * lua require("barbecue.ui").update()
-- ]]
