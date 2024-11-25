require('lualine').setup {
  options = {
    --   icons_enabled = true,
    --   theme = 'gruvbox-material',
    -- section_separators = { left = '', right = '' },
    -- component_separators = { left = '┆', right = '┆' },
    --
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    --   ignore_focus = {},
    --   always_divide_middle = true,
    globalstatus = true,
    --   refresh = {
    --     statusline = 1000,
    --     tabline = 1000,
    --     winbar = 1000,
    --   }
    -- },
    -- sections = {
    --   lualine_a = {'mode'},
    --   lualine_b = {'branch', 'diff'},
    --   lualine_c = {
    --     {
    --       'diagnostics',
    --       sources = { 'nvim_diagnostic', 'coc' },
    --       -- Displays diagnostics for the defined severity types
    --       sections = { 'error', 'warn', 'info', 'hint' },
    --       diagnostics_color = {
    --         -- Same values as the general color option can be used here.
    --         error = {fg="red", bg="#282828"}, -- Changes diagnostics' error color.
    --         warn  = {fg="yellow", bg="#282828"},  -- Changes diagnostics' warn color.
    --         info  = {fg="orange", bg="#282828"},  -- Changes diagnostics' info color.
    --         hint  = {fg="lightgreen", bg="#282828"},  -- Changes diagnostics' hint color.
    --       },
    --       symbols = {error = 'E:', warn = 'W:', info = 'I:', hint = 'H:'},
    --       colored = true,           -- Displays diagnostics status in color if set to true.
    --       update_in_insert = false, -- Update diagnostics in insert mode.
    --       always_visible = false,   -- Show diagnostics even if there are none.
    --     }
    --   },
    --   lualine_x = {{'encoding', color={fg="white", bg="#282828"}}},
    --   lualine_y = {{'progress', color={fg="white", bg="#282828"}}},
    --   lualine_z = {{'location', color={fg="white", bg="#282828"}}},
    --   },
    --   inactive_sections = {
    --     lualine_a = {},
    --     lualine_b = {},
    --     lualine_c = {'filename'},
    --     lualine_x = {'location'},
    --     lualine_y = {},
    --     lualine_z = {}
    --   },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = { "neo-tree" },
  }
}
