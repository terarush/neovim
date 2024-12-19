require "nvchad.mappings"

-- add yours mapping here

local map = vim.keymap.set
local lsp = vim.lsp
local builtin = require "telescope.builtin"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>f", "<Plug>(prettier-format)", { silent = true })
map("n", "<C-q>", ":bd<CR>", { desc = "Close buffer", silent = true })
-- telescope mapping 
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
-- next tab mapping
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next tab" })
map("n", "<C-t>", function()
  require("nvchad.themes").open { style = "compact" }
end, {})
-- risize width vsp or sp mapping
map("n", "<C-w>h", ":vertical resize -10<CR>", { desc = "Resize window left", silent = true })
map("n", "<C-w>l", ":vertical resize +10<CR>", { desc = "Resize window right", silent = true })
map("n", "<C-w>k", ":resize +10<CR>", { desc = "Resize window up", silent = true })
map("n", "<C-w>j", ":resize -10<CR>", { desc = "Resize window down", silent = true })
-- clear search highlight mapping
map("n", "<leader>h", ":noh<CR>", { desc = "Clear search highlights", silent = true })
-- rename same text mapping
map("n", "<leader>rn", lsp.buf.rename, { desc = "LSP Rename" })

-- map("n", "<Space>e", ":Explore .<CR>", { noremap = true, silent = true, desc = "Toggle Nvim Tree" })
