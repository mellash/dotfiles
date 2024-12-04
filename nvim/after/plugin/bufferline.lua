require("bufferline").setup {
  options = {
    show_buffer_icons = true,
    show_close_icon = false,
    always_show_bufferline = true,
    auto_toggle_bufferline = true,
    mode = "buffers",
    numbers = "none",
    separator_style = "slant",
    persist_buffer_sort = true,
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' }
    },
    sort_by = 'insert_after_current',
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        text_align = "center",
        highlight = 'Directory',
        separator = true,
      },
    },
  },
}
