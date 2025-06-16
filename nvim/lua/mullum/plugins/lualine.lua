return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lotusdragon = require('themes.lotusdragon')

        local mode = {
            'mode',
            fmt = function(str)
                return str:sub(1,1)
            end
        }

        local filename = {
            'filename',
            file_status = true,
            path = 1
        }

        local function cwd()
            return '~/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
        end

        require('lualine').setup {
              options = {
                fmt = string.lower,
                component_separators = '',
                section_separators = '',
                theme = lotusdragon,
             },
              sections = {
                lualine_a = { mode },
                lualine_b = { cwd },
                lualine_c = { filename },
                lualine_x = { 'encoding' },
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
