vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>")
vim.keymap.set("n", "<C-s>", "<ESC>:w<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set('t', '<Esc>', "<C-\\><C-n>")
vim.keymap.set("n", "<C-\\>", "<Esc>:terminal<CR>")
vim.keymap.set("n", "<C-h>", "<Esc>:botright split +terminal<CR>")
