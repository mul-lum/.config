return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",

    config = function() 
        require 'ibl'.setup {
              indent = {
                    char = "│",
              },
              scope = {
                    enabled = false,
              },
              exclude = {
                    buftypes = { "terminal", "nofile" },
                    filetypes = { "help", "dashboard", "lazy", "NvimTree" },
              },
              whitespace = {
                    remove_blankline_trail = true,
              },
        }
    end
}
