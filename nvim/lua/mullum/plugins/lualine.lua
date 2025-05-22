return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- local theme= require 'mullum.themes.gruvbox_custom_dark'

        require('lualine').setup {
              options = {
                theme = 'ayu',
              },
              sections = {
                lualine_a = { { 'mode' } },
                lualine_b = { 'filename', 'branch' },
                lualine_c = {
                  '%=', --[[ add your center components here in place of this comment ]]
                },
                lualine_x = {},
                lualine_y = { 'filetype'},
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
