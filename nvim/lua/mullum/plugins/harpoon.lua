return {
	"thePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup({
			global_settings = {
				save_on_toggle = true,
				save_on_change = true,
			},
		})

		--Harpoon Nav Interface
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon add file" })
		vim.keymap.set("n", "<C-v>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

        -- Remove from buffer
        vim.keymap.set('n', '<C-x>', function() 
            harpoon:list():remove()
        end)

		--Harpoon marked files
		vim.keymap.set("n", "<C-u>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-i>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-m>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-o>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-p>", function()
			harpoon:list():next()
		end)

	end,
}
