-- Disabling netrw banner
vim.g.netrw_banner = 0
-- Number line
vim.opt.nu = true
-- Tab width
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.termguicolors = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Colorshceme
vim.cmd("colorscheme gruvbox-material")

-- Word line break
vim.opt.linebreak = true

-- Neovim terminal
vim.api.nvim_command("autocmd TermOpen * startinsert")             -- starts in insert mode
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber")       -- no numbers
vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no") -- no sign column
vim.keymap.set('t', '<esc>', "<C-\\><C-n>")
