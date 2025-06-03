return {
    'b0o/incline.nvim',
--    enabled = false,
    config = function()
        local colors = {
              black        = '#282828',
              white        = '#ebdbb2',
              gray         = '#a89984',
              darkgray     = '#050505',
        }

        require('incline').setup {
            window = {
                padding = 0,
                margin = { horizontal = 0 },
            },
            render = function(props)
                  local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')

                  if filename == '' then
                      filename = '[No Name]'
                  end

                  return {
                    ' ',
                    filename,
                    ' ',
                    guibg = colors['darkgray'],
                    guifg = colors['white'],
                  }
            end,
        }
    end,
}
