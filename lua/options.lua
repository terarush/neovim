require "nvchad.options"
vim.wo.relativenumber = true
vim.opt.termguicolors = true
vim.opt.laststatus = 3
vim.o.wrap = false
vim.api.nvim_exec([[
  autocmd BufRead,BufNewFile *.blade.php set filetype=html
]], false)


-- Sembunyikan bufferline saat NvimTree terbuka

-- vim.opt.list = true
-- vim.opt.listchars = { space = '·', tab = '|-' }

