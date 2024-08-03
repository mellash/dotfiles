require("bufferline").setup{
  options = {
    show_buffer_icons = true,
    show_close_icon = false,
    always_show_bufferline = false,
    auto_toggle_bufferline = true,
    mode = "tabs",
    numbers = "none",
    offsets = {
      {
        filetype = "NeoTree",
        text = "File Explorer",
        text_align = "center",
        separator = false,
      },
    },
  },
}
