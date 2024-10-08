-- Leader
vim.g.mapleader = " "
-- jj for <ESC>
vim.keymap.set("i", "jj", "<ESC>")
-- CTRL+s to save file
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>")
vim.keymap.set("n", "<C-s>", "<ESC>:w<CR>")

-- Open neotree with <leader>e
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
-- Open neotree with in float mode with <leader>E
vim.keymap.set("n", "<leader>E", ":Neotree float toggle<CR>")
-- Go to the next tab with <Tab>
vim.keymap.set("n", "<Tab>", ":tabnext<CR>")
-- Go to the previous tab with Shift+Tab
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>")
-- Quite with CTRL+q
vim.keymap.set("n", "<C-q>", "<ESC>:q<CR>")
-- Cut line with CTRL+x
vim.keymap.set("n", "<C-x>", "dd", opts)
-- Normal movement with gj and gk instead of j and k
vim.keymap.set("n", "j", "gj", opts)
vim.keymap.set("n", "k", "gk", opts)
-- Remove highlight with <ESC>
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")
-- Open terminal with CTRL+\
vim.keymap.set("n", "<C-\\>", "<ESC>:terminal<CR>")
-- Open terminal with CTRL+t on the bottom
vim.keymap.set("n", "<C-t>", "<ESC>:botright split +terminal<CR>")
-- Window navigation with hljk
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-d>', '<ESC>:lua vim.lsp.buf.definition()<CR>')

-- Use <ESC> in terminal 
vim.keymap.set('t', '<ESC>', "<C-\\><C-n>")
-- CTRL+k to jump up to the upper window
vim.keymap.set('t', '<C-k>', "<C-\\><C-n><C-w><C-k>")
