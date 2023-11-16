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
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ph', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>pp', builtin.buffers, {})
vim.keymap.set('n', '<leader>i', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.git_status, {})
vim.keymap.set('n', '<leader>fi', ":Telescope grep_string search=<C-R><C-W><CR>", {})
vim.keymap.set('n', '<leader>ci', ":Telescope grep_string search=<C-R><C-W><CR>", {})

-- vim.keymap.set('n', '<leader> ', builtin.find_files, {find_command={'fd', vim.fn.expand("<cword>")}})

vim.keymap.set('n', '<leader>ps', function()
	builtin.find_files({find_command={'fd', fname}})
end)
