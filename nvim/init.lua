require 'mullum.core'
require 'mullum.lazy'

local current_theme = 'kanagawa-dragon'
vim.cmd('colorscheme ' .. current_theme)
vim.api.nvim_set_hl(0, 'LineNR', { fg = '#DCD7BA', bg = '#1D1C19'})
