 require('rose-pine').setup({
     --- @usage 'auto'|'main'|'moon'|'dawn'
     variant = 'auto',
     --- @usage 'main'|'moon'|'dawn'
     dark_variant = 'main',
     bold_vert_split = false,
     dim_nc_background = false,
     disable_background = true,
     disable_float_background = true,
     disable_italics = false,
 
     --- @usage string hex value or named color from rosepinetheme.com/palette
     groups = {
         background = 'base',
         background_nc = '_experimental_nc',
         panel = 'surface',
         panel_nc = 'base',
         border = 'highlight_med',
         comment = 'muted',
         link = 'iris',
         punctuation = 'subtle',
 
         error = 'love',
         hint = 'iris',
         info = 'foam',
         warn = 'gold',
 
         headings = {
             h1 = 'iris',
             h2 = 'foam',
             h3 = 'rose',
             h4 = 'gold',
             h5 = 'pine',
             h6 = 'foam',
         }
         -- or set all headings at once
         -- headings = 'subtle'
     },
 
     -- Change specific vim highlight groups
     -- https://github.com/rose-pine/neovim/wiki/Recipes
     highlight_groups = {
         ColorColumn = { bg = 'highlight_high' },
 
         -- Blend colours against the "base" background
         CursorLine = { bg = 'base', blend = 10 },
         StatusLine = { fg = 'pine', bg = 'love', blend = 10 },
     }
 })
 
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

-- vim.cmd('colorscheme tokyonight')
-- vim.cmd('colorscheme blue-moon')
-- vim.cmd('colorscheme github-colors')

vim.g.nord_disable_background = true
vim.g.nord_uniform_diff_background = true
vim.g.nord_contrast = true
-- vim.cmd('colorscheme nord')

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- Set colorscheme after options
-- vim.cmd('colorscheme rose-pine')

vim.cmd.colorscheme "catppuccin"

