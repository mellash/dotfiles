-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  -- Mellow theme
  use("mellow-theme/mellow.nvim")
  -- Indent lines
  use "lukas-reineke/indent-blankline.nvim"
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
  }
  -- Vim be good
  use "ThePrimeagen/vim-be-good"
  -- Github copilte
  use "github/copilot.vim"
  -- Lualine for beautiful status
  use "nvim-lualine/lualine.nvim"
  -- Show nice tab instead of the default
  use "akinsho/bufferline.nvim"
  -- Nice explorer
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v4.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  }
  -- For finding things in light speed
  use { "nvim-telescope/telescope.nvim", tag = "1.1.8" }
  -- Cool icons for neovim
  use "nvim-tree/nvim-web-devicons"
  -- Autopairs
  use "windwp/nvim-autopairs"
  -- Git signs
  use "lewis6991/gitsigns.nvim"
  -- Auto formmater
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
  -- LSP config
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/nvim-cmp"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"
end)
