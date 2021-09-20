-- lsp
--
-- java jdts
require'lspconfig'.jdtls.setup{on_attach=require'completion'.on_attach}

-- python pyright
require('lspconfig').pyright.setup{on_attach=require'completion'.on_attach}

-- vue vuels
require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}

-- html html
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
  on_attach=require'completion'.on_attach
}
