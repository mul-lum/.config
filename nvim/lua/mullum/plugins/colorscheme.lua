return {
    {
        'ellisonleao/gruvbox.nvim',
        config = function()
            require('gruvbox').setup 
            {
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    folds = false,
                    operators = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {
                    Pmenu = { bg = "" }, -- Completion menu background
                },
                dim_inactive = false,
                transparent_mode = true,
            }
        end
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require("rose-pine").setup {
                styles = {
                    transparency = true,
                }
            }
        end
    },
    {
        'Shatur/neovim-ayu',
        config = function()
            require('ayu').setup {
                overrides = {
                    Normal = { bg = "None" },
                    NormalFloat = { bg = "none" },
                    ColorColumn = { bg = "None" },
                    SignColumn = { bg = "None" },
                    Folded = { bg = "None" },
                    FoldColumn = { bg = "None" },
                    CursorLine = { bg = "None" },
                    CursorColumn = { bg = "None" },
                    VertSplit = { bg = "None" },
                },
            }
        end
    },
    {
        'catppuccin/nvim',
        name= 'catppuccin',
        config= function ()
            require('catppuccin').setup {
                transparent_background= true,
                term_colors= true
            }
        end
    }
}
