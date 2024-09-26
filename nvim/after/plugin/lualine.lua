require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },

    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {{'mode', icons_enabled=true, icon={'✒ ', color={fg='#d79921'}}, color={fg="oragne", bg="#282828"}}},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {
        {
          'filename',
          icons_enabled=true,
          path = 1, -- 2 for full path
          symbols = {
            modified = "●",
          },
          color={fg="white", bg="#282828"},
        }
      },
      lualine_x = {{'encoding', color={fg="white", bg="#282828"}}},
      lualine_y = {{'progress', color={fg="white", bg="#282828"}}},
      lualine_z = {{'location', color={fg="white", bg="#282828"}}},
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {"neo-tree"},
  }
