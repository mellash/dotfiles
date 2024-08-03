-- Netrw
-- vim.g.netrw_banner = 0
-- vim.g.netrw_browse_split = 4
-- vim.g.netrw_altv = 1
-- vim.g.netrw_liststyle = 3
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Number line
vim.opt.number = true
vim.opt.numberwidth = 3

-- Giving space for errors
vim.cmd("set signcolumn=yes")

-- Tab width
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Trail and space character
vim.opt.list = true
vim.o.listchars = "trail:."

-- Enables 24-bit RGB color
vim.opt.termguicolors = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.cmd("set cursorlineopt=number")

-- Colorshceme
vim.g.gruvbox_material_background="hard"
vim.g.gruvbox_material_foreground="original"
vim.g.gruvbox_material_enable_italic = true
vim.cmd("colorscheme gruvbox-material")

-- Word line break
vim.opt.linebreak = true

-- Neovim terminal
vim.api.nvim_command("autocmd TermOpen * startinsert")
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber")
vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")

