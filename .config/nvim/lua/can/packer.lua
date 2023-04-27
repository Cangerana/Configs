vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
-- or                            , branch = '0.1.x',
     requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'neoclide/coc.nvim'

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
  })

  use({
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
        vim.cmd('colorscheme tokyonight')
    end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('nvim-treesitter/playground')

  use 'shaunsingh/nord.nvim'

  use {'tpope/vim-fugitive'} -- Git manager
end)

