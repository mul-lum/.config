return {
  'stevearc/oil.nvim',
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
      require('oil').setup {
          default_file_explorer = true,
          columns = {},
          keymaps = {
              ['<C-h>'] = false,
              ['<C-c>'] = false,
              ['<M-h>'] = 'actions.select_split',
              ['q'] = 'actions.close'
          },
          view_options = {
              show_hidden = true,
          },
          skip_confirm_for_simple_edits = true,
      }

      vim.keymap.set('n', '<C-e>', '<CMD>Oil<CR>')
      vim.keymap.set('n', '<leader>e', require('oil').toggle_float)
  end
}
