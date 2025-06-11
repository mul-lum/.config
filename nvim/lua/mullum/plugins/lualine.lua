return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lotusdragon = require('themes.lotusdragon')

        local filename = {
            'filename',
            file_status = true,
            path = 0
        }

        require('lualine').setup {
              options = {
                component_separators = '',
                section_separators = '',
                theme = lotusdragon,
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
