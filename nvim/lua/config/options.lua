-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Hide cmd while typing
vim.opt.cmdheight = 0

-- Force formatoptions settings on buffer load
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove("r")
    vim.opt.formatoptions:remove("o")
  end,
})

-- Disable diagnostic
vim.diagnostic.config({ virtual_text = false })

-- Number line
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3

-- Update time
vim.opt.updatetime = 60

-- Encoding
vim.opt.encoding = "utf-8"

-- Tab and Trail
vim.opt.list = true
vim.opt.listchars = {
  tab = " ▏",
  trail = "•",
  -- eol = "¬"
}


-- Mostly just for cmp
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- We don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false

-- Time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 1000

-- Faster completion (4000ms default)
vim.opt.updatetime = 100

-- Makes sure there are always eight lines of context
vim.opt.scrolloff = 8

-- Makes sure there are always eight lines of context
vim.opt.sidescrolloff = 8

-- Don't show the ruler
vim.opt.ruler = false

-- No ~  character
vim.opt.fillchars = { eob = " " }

-- Pop up menu height
vim.opt.pumheight = 10

-- Show signcolumn
vim.cmd("set signcolumn=yes")

-- Tab width
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Enables 24-bit RGB color
vim.opt.termguicolors = true

-- Splits on the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set highlight on search
vim.opt.hlsearch = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Colorshceme
vim.cmd("colorscheme mellow")


-- Word line break
vim.opt.linebreak = true

-- Neovim terminal
vim.api.nvim_command("autocmd TermOpen * startinsert")
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber")
vim.api.nvim_command("autocmd TermOpen * setlocal norelativenumber")
vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")
