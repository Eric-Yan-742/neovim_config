-- LSP (LSP Zero)
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'clangd'},
  handlers = {
    lsp_zero.default_setup,
  },
})
local lspconfig = require('lspconfig')
-- turn off virtual text
vim.diagnostic.config({
  virtual_text = false,
})
