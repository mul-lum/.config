return {
    "ibhagwan/fzf-lua",
    config = function ()
        local nvimfzf = require 'fzf-lua'

        nvimfzf.setup {
            winopts = {
                border = 'single',
                treesitter = {
                    enabled = false
                },
            },
            fzf_colors = {
                ['prompt'] = { 'fg', 'Normal'},
                ['info'] = { 'fg', 'Normal'},
                ['pointer'] = { 'fg', 'Normal'}
            }
        }

        vim.keymap.set('n', '<leader>fo', nvimfzf.files)
        vim.keymap.set('n', '<leader>fg', nvimfzf.live_grep)
    end
}
