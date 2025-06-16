return {
    'b0o/incline.nvim',
    enabled = false,
    config = function()

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
                    guibg = '#0d0c0c',
                    guifg = '#DCD7BA',
                  }
            end,
        }
    end,
}
