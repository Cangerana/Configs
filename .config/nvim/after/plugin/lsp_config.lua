-- vim.lsp.config("ruby_lsp", {
--   on_attach = function(client, bufnr)
--     local opts = { buffer = bufnr, noremap = true, silent = true }
-- 
--     vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
-- 
--     vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
--     vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--     vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
--     vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
--     vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
-- 
--     vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
--     vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
--     vim.keymap.set("n", "<space>wl", function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, opts)
-- 
--     vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
--     vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
--     vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
--     vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
-- 
--     vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
--     vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
--     vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
--     vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)
-- 
--     vim.keymap.set("n", "<space>f", function()
--       vim.lsp.buf.format({ async = true })
--     end, opts)
--   end,
-- })

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }

  vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

  vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)

  vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

  vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

  vim.keymap.set("n", "<space>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

local servers = {
  "ruby_lsp",
  "lua_ls",
  "ts_ls",
  "html",
  "cssls",
  "jsonls",
  "yamlls",
  "dockerls",
  "bashls",
}

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    on_attach = on_attach,
  })
end

vim.lsp.enable(servers) 
