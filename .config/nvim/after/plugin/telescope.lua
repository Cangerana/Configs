local status, telescope = pcall(require, "telescope")
local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    file_ignore_patterns = { 
      "node_modules",
      ".git",
      "vendor",
      "spec",
      "tags",
      "rgloader",
      "home",
      "env",
      "app/assets"
    },
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    }
  }
})
vim.keymap.set('n', '<leader>ff', ":Telescope find_files follow=true<CR>", {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ph', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>pp', builtin.buffers, {})
vim.keymap.set('n', '<leader>i', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

