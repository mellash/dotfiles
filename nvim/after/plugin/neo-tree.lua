require('neo-tree').setup({
    event_handlers = {
        {
            event = "neo_tree_buffer_enter",
            handler = function()
                -- This effectively hides the cursor
                vim.cmd 'highlight! Cursor blend=100'
            end
        },
        {
            event = "neo_tree_buffer_leave",
            handler = function()
                -- Make this whatever your current Cursor highlight group is.
                vim.cmd 'highlight! Cursor guibg=#5f87af blend=0'
            end
        }
    },
    window = {
        position = "left",
        width = 25,
        mapping_options = {
            noremap = true,
            nowait = true,
        }
    },
    default_component_configs = {
        modified = {
            symbole = " ",
            highlight = "NeoTreeModified",
        },
        diagnostics = {
            symbols = {
                hint = "󰌶 ",
                info = " ",
                warn = "󰀪 ",
                error = "󰅚 ",
            },
            highlight = {
                hint = "DiagnosticSignHint",
                info = "DiagnosticSignInfo",
                warn = "DiagnosticSignWarn",
                error = "DiagnosticSignError",
            }
        },
        git_status = {
            symbols = {
                -- Change type
                added = "",
                deleted = "",
                modified = "",
                renamed = "",
                -- Status type
                untracked = "",
                ignored = "",
                unstaged = "",
                staged = "",
                conflict = "",
            },
        },
    },
})
