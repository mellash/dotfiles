vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>")

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<C-s>", "<ESC>:w<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-\\>", "<Esc>:terminal<CR>")
vim.keymap.set("n", "<C-t>", "<Esc>:botright split +terminal<CR>")
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-d>', '<ESC>:lua vim.lsp.buf.definition()<CR>')

vim.keymap.set('t', '<Esc>', "<C-\\><C-n>")
vim.keymap.set('t', '<C-k>', "<C-\\><C-n><C-w><C-k>")
