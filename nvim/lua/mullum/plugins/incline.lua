return {
    'b0o/incline.nvim',
--    enabled = false,
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
                    guibg = '#16161D',
                    guifg = '#7E9CD8',
                  }
            end,
        }
    end,
}
