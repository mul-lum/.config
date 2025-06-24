return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lotusdragon = require('themes.lotusdragon')

        local mode = {
            'mode',
        }

        local filetype = {
            'filetype',
            icons_enabled = false
        }

        local filename = {
            'filename',
            file_status = true,
            path = 1
        }

        require('lualine').setup {
              options = {
                component_separators = '::',
                section_separators = '',
                theme = lotusdragon,
             },
              sections = {
                lualine_a = { mode },
                lualine_b = {  },
                lualine_c = { filename },
                lualine_x = { 'encoding', filetype },
                lualine_y = { 'progress' },
                lualine_z = {
                  { 'location' },
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
