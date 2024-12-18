require "nvchad.options"

-- relativenumber options
vim.wo.relativenumber = true
-- termui options
vim.opt.termguicolors = true

-- laststatus options
-- vim.opt.laststatus = 3
vim.o.wrap = false
-- search options
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true
-- vim.opt.incsearch = true
-- vim.opt.wrapscan = true

-- scroll options
-- vim.opt.scrolloff = 8
-- vim.opt.sidescrolloff = 8
-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true
--
-- custom TS highlight
vim.api.nvim_exec([[
  autocmd BufRead,BufNewFile *.blade.php set filetype=html
]], false)
--

-- Sembunyikan bufferline saat NvimTree terbuka

-- vim.opt.list = true
-- vim.opt.listchars = { space = '·', tab = '|-' }

