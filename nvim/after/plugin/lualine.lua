require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'mellow',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        'mode',
        fmt = function(str)
          return str:sub(1, 1)
        end
      }
    },
    lualine_b = {
      {
        'branch', icon = '' -- 
      },
      'diff',
      'diagnostics',
      'diagnosticscount'
    },
    lualine_c = { 'filesize', },
    lualine_x = {
      'searchcount',
      {
        '%l:%c',
        padding = 1,
      },
      'encoding',
      {
        'fileformat',
      }
    },
    lualine_y = {},
    lualine_z = {
      {
        function()
          return ' '
        end,
        padding = 0
      }
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    luline_y = {},
    lualine_z = {}
  },
}
