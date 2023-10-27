-- LSP (LSP Zero)
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({
     buffer = bufnr,
     exclude = {'K'},
  })
  vim.keymap.set('n', 'gk', '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})
require'lspconfig'.ccls.setup{}
-- turn off virtual text
vim.diagnostic.config({
  virtual_text = false,
})

-- Use tab to select the first item in the menu
local cmp = require'cmp'
cmp.setup {
  mapping = {
    ['<Tab>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
}


