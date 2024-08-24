vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("v", "<leader>c", [["+c]])

vim.keymap.set("n", "<leader>D", [["+D]])
vim.keymap.set("n", "<leader>C", [["+C]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>yy", [["+yy]])
vim.keymap.set("n", "<leader>yiw", [["+yiw]])
vim.keymap.set("n", "<leader>yiW", [["+yiW]])

vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set('n', 'x', '"_x')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", [[::s//gcI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>fy", "<cmd>!cat % | xclip -selection clipboard<CR>")

vim.keymap.set("n", "Q", ":bd %<CR>")
vim.keymap.set("n", "<leader>j", ":bprevious<CR>")
vim.keymap.set("n", "<leader>k", ":bnext<CR>")

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>,", "ml$a,<ESC>`l")
vim.keymap.set("n", "<leader>;", "ml$a;<ESC>`l")
vim.keymap.set("n", "<leader>(", "ml$a(<ESC>`l")
vim.keymap.set("n", "<leader>)", "ml$a)<ESC>`l")
vim.keymap.set("n", "<leader>[", "ml$a[<ESC>`l")
vim.keymap.set("n", "<leader>]", "ml$a]<ESC>`l")
vim.keymap.set("n", "<leader>{", "ml$a{<ESC>`l")
vim.keymap.set("n", "<leader>}", "ml$a}<ESC>`l")
vim.keymap.set("n", "<leader>'", "ml$a'<ESC>`l")
vim.keymap.set("n", "<leader>\"", "ml$a\"<ESC>`l")

vim.keymap.set("n", "<leader>l", "mlA")
vim.keymap.set("n", "<leader>h", "mlI") 
vim.keymap.set("n", "<leader>J", "`l")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

vim.keymap.set("n", "<leader><CR>d", "<cmd>e config/database.yml<CR>")
vim.keymap.set("n", "<leader><CR>r", "<cmd>e config/routes.rb<CR>")
vim.keymap.set("n", "<leader><CR>e", "<cmd>e %:p:h<CR>")
vim.keymap.set("n", "<leader><CR>s", "<cmd>cd ~/projects/engines/srh_core<CR><cmd>e ~/projects/engines/srh_core<CR>")
vim.keymap.set("n", "<leader><CR>g", "<cmd>cd ~/projects/engines/gpweb_relatorios<CR><cmd>e ~/projects/engines/gpweb_relatorios<CR>")
vim.keymap.set("n", "<leader><CR>c", "<cmd>cd ~/projects/engines/core<CR><cmd>e ~/projects/engines/core<CR>")
vim.keymap.set("n", "<leader><CR>b", "<cmd>cd ~/projects/sql/<CR><cmd>e ~/projects/sql/<CR>")
vim.keymap.set("n", "<leader><CR>n", "<cmd>e ~/projects/settings/notes<CR>")

vim.keymap.set("n", "<leader><UP>", "<cmd>resize +10<CR>")
vim.keymap.set("n", "<leader><DOWN>", "<cmd>resize -10<CR>")

vim.keymap.set("n", "<leader>ce", [[:e %:p:h]])
vim.keymap.set("n", "<leader>cw", [[:w %:p:h]])

vim.keymap.set("n", "<leader>g", "<cmd>Git<CR>")
vim.keymap.set("n", "<leader>gg", "<cmd>tab Git<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>")
vim.keymap.set("n", "<leader>gl", "<cmd>Git log<CR>")
vim.keymap.set("n", "<leader>gcl", "<cmd>Git log %<CR>")
vim.keymap.set("n", "<leader>gcd", "<cmd>tab Gdiffsplit<CR>")
vim.keymap.set("n", "<leader>gco", "<cmd>tab G commit<CR>")

vim.keymap.set("n", "<leader>ts", "i#{}<Left><ESC>")
vim.keymap.set("n", "<leader>tsp", "i#{}<Left><ESC>p")
vim.keymap.set("n", "<leader>te", "i<% %><left><ESC>")
vim.keymap.set("n", "<leader>te", "i<%= %><left><ESC>")
vim.keymap.set("n", "<leader>tb", "obyebug<ESC>==")

vim.keymap.set("n", "<leader>v", "<cmd>set clipboard=unnamedplus<CR>")
vim.keymap.set("n", "<leader>V", "<cmd>set clipboard=<CR>")
