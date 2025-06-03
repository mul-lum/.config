return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local gruvbox_custom = require 'assets.gruvbox_custom'

        local filename = {
            'filename',
            file_status = true,
            path = 3
        }

        require('lualine').setup {
              options = {
                component_separators = '',
                section_separators = '',
                theme = gruvbox_custom,
              },
              sections = {
                lualine_a = { { 'mode' } },
                lualine_b = { filename },
                lualine_c = {
                },
                lualine_x = {},
                lualine_y = { 'encoding', 'filetype'},
                lualine_z = {
                  { 'progress' },
                },
              },
              inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
              },
              tabline = {},
              extensions = {},
           }
    end
}
