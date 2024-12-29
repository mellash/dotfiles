require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "html", "json", "javascript", "css", "java", "bash", "rust", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = {},

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
