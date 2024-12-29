local cmp = require 'cmp'

local cmp_kinds = {
  Text = ' ',
  Method = ' ',
  Function = ' ',
  Constructor = ' ',
  Field = ' ',
  Variable = ' ',
  Class = ' ',
  Interface = ' ',
  Module = ' ',
  Property = ' ',
  Unit = ' ',
  Value = ' ',
  Enum = ' ',
  Keyword = ' ',
  Snippet = ' ',
  Color = ' ',
  File = ' ',
  Reference = ' ',
  Folder = ' ',
  EnumMember = ' ',
  Constant = '󰏿',
  Struct = ' ',
  Event = ' ',
  Operator = ' ',
  TypeParameter = ' ',
}


cmp.setup({
  formatting = {
    -- Format to show cmp_kinds icons,and abbrivations.
    format = function(_, vim_item)
      vim_item.kind = cmp_kinds[vim_item.kind] .. " " .. vim_item.kind
      return vim_item
    end,
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

-- Showing sings for error, warning, hint and info.
local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- Python (pyright) lsp
require('lspconfig')['pyright'].setup {
  cmd = { "/home/mellash/.npm-global/bin/pyright-langserver", "--stdio" },
  capabilities = capabilities
}


-- JavaScript (tsserver) lsp
require('lspconfig')['ts_ls'].setup {
  cmd = { "/home/mellash/.npm-global/bin/typescript-language-server", "--stdio" },
  capabilities = capabilities
}


-- Go (gopls) lsp
require('lspconfig')['gopls'].setup {}


-- Emmet lsp
require('lspconfig')['emmet_ls'].setup {
  cmd = { "/home/mellash/.npm-global/bin/emmet-ls", "--stdio" },
  capabilities = capabilities
}


-- C/C++ (clangd) lsp
require('lspconfig')['clangd'].setup {}


-- Lua (lua-language-server) lsp
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


-- CSS (cssls) lsp
--Enable (broadcasting) snippet capability for completion
capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.cssls.setup {
  capabilities = capabilities,
}


-- HTML (html) lsp
--Enable (broadcasting) snippet capability for completion
capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup {
  capabilities = capabilities,
}
