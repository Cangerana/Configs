vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- snippts

  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }

  -- completion

  use { "saadparwaiz1/cmp_luasnip" }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }


  -- lsp

  use { 'neovim/nvim-lspconfig' }

  -- theme

  use 'Mofiqul/dracula.nvim'

  use('folke/tokyonight.nvim')

  use {
    "kyazdani42/blue-moon",
    config = function()
      vim.opt.termguicolors = true
      vim.cmd "colorscheme blue-moon"
    end
  }

  use 'lourenci/github-colors'

  use 'shaunsingh/nord.nvim'

  use { "catppuccin/nvim", as = "catppuccin" }

  use({
    "epwalsh/obsidian.nvim",
    tag = "*",
    requires = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp"
    }
  })

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
  })

  use { 'rainbowhxch/beacon.nvim' }

  -- core

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
     requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ('nvim-lua/plenary.nvim')

  use('tpope/vim-fugitive')

  -- use 'neoclide/coc.nvim' -- Liver Server

  use ('ThePrimeagen/harpoon')

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use 'tpope/vim-rails' -- Plugin to work with rails

  use "terrortylor/nvim-comment" -- Toggle comments

  use 'wakatime/vim-wakatime' -- Plugin to code time analyzing

  require("telescope").load_extension('harpoon')
  require('nvim_comment').setup()
end)

