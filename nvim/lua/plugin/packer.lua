-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  -- Material gruvbox for life
  use "sainnhe/gruvbox-material"
  -- Lualine for beautiful status
  use "nvim-lualine/lualine.nvim"
  -- For indent guide
  use "lukas-reineke/indent-blankline.nvim"
  -- Show nice tab instead of the default
  use "akinsho/bufferline.nvim"
  -- Tree setter
  use 'nvim-treesitter/nvim-treesitter'
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
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/nvim-cmp"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"
end)
