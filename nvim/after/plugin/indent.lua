require("ibl").setup({
  exclude = {
    filetypes = { "help", "man", "text", "rst", "markdown", "checkhealth" },
  },
  indent = {
    char = "▏",
  },
  scope = {
    enabled = true,
    show_start = true,
    show_end = true,
    show_exact_scope = true,
  },
})
