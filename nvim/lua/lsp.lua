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

--lua
local system_name = "Linux"

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = '/usr/local/lib/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  on_attach=require'completion'.on_attach,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = {'neovim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}


-- lsp enhence
local saga = require 'lspsaga'
saga.init_lsp_saga()
