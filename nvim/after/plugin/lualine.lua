require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'gruvbox-material',
    section_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics', 'diagnosticscount' },
    lualine_c = { 'filesize', 'searchcount' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    luline_y = {},
    lualine_z = {}
  },
}
