require('neo-tree').setup({
  window = {
    position = "left",
    width = 25,
    mapping_options = {
      noremap = true,
      nowait = true,
    }
  },
  default_component_configs = {
    icon = {
      folder_closed = "", -- ▷▶
      folder_open = "", -- ▽▼
      folder_empty = "󰜌",
    },
    modified = {
      symbol = "⬤",
      highlight = "NeoTreeModified",
    },
    diagnostics = {
      symbols = {
        hint = "󰌶",
        info = "",
        warn = "󰀪",
        error = "󰅚",
      },
      highlight = {
        hint = "DiagnosticSignHint",
        info = "DiagnosticSignInfo",
        warn = "DiagnosticSignWarn",
        error = "DiagnosticSignError",
      }
    },
  }
})
