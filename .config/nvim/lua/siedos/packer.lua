vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
     requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- use('nvim-treesitter/playground')

  use('tpope/vim-fugitive')

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

  use 'neoclide/coc.nvim' -- Liver Server

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

  use 'dbinagi/nomodoro' -- Plugin of pomodoro
  require('nomodoro').setup({
    work_time = 25,
    break_time = 5,
    menu_available = true,
    texts = {
      on_break_complete = "TIME IS UP!",
      on_work_complete = "TIME IS UP!",
      status_icon = "羽",
      timer_format = '!%0M:%0S' -- To include hours: '!%0H:%0M:%0S'
    },
    on_work_complete = function() end,
    on_break_complete = function() end
  })

  -- snippts

  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }

  use 'Mofiqul/dracula.nvim'

  use { "catppuccin/nvim", as = "catppuccin" }

  use { 'rainbowhxch/beacon.nvim' }

  use ('nvim-lua/plenary.nvim')

  use ('ThePrimeagen/harpoon')
  require("telescope").load_extension('harpoon')

end)

