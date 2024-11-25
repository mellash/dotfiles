local cmp = require 'cmp'
luasnip = require 'lualine'


cmp.setup({
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  formatting = {
    fields = { "abbr", "kind" },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
    { name = 'path' }
  })
})


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Python
require('lspconfig')['pyright'].setup {
  cmd = { "/home/mellash/.npm-global/bin/pyright-langserver", "--stdio" },
  capabilities = capabilities
}
-- JavaScript
require('lspconfig')['ts_ls'].setup {
  cmd = { "/home/mellash/.npm-global/bin/typescript-language-server", "--stdio" },
  capabilities = capabilities
}
-- Go
require('lspconfig')['gopls'].setup {}
-- Emmet
require('lspconfig')['emmet_ls'].setup {
  cmd = { "/home/mellash/.npm-global/bin/emmet-ls", "--stdio" },
  capabilities = capabilities
}
-- Rust
require 'lspconfig'.rust_analyzer.setup {}
-- C/C++
require('lspconfig')['clangd'].setup {}
-- Lua
require 'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
    },
  },
}
-- CSS
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
-- HTML
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup {
  capabilities = capabilities,
}
-- TailwindCSS
require 'lspconfig'.tailwindcss.setup {}
-- Svelte
require 'lspconfig'.svelte.setup {}
-- Java
require 'lspconfig'.jdtls.setup {}
