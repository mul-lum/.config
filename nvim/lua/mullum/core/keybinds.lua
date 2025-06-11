vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- x doesnt save
vim.keymap.set({ 'n', 'v' }, 'x', [["_x]])
vim.keymap.set('v', '<leader>d', [["_d]], {noremap= true, silent= true})

-- move lines up and down in visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

-- move up and down easier
vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true})
vim.keymap.set('n', '<C-f>', '<C-f>zz', {noremap = true})
vim.keymap.set('n', '<C-b>', '<C-b>zz', {noremap = true})

-- netrw + exit bind
vim.keymap.set({ 'i', 'v' }, '<C-q>', '<Esc>', { noremap = true })
vim.keymap.set('n', '<C-e>', '<cmd>Ex<CR>')

-- clear highlights
vim.keymap.set("n", "<C-h>", ":nohl<CR>", { desc = "Clear search hl", silent = true })

-- shift tab + tab in visual
vim.keymap.set('v', '<S-Tab>', '<gv')
vim.keymap.set('v', '<Tab>', '>gv')

-- tab stuff
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")   --open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") --close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")     --go to next
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")     --go to pre
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --open current tab in new tab

--split management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
-- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
-- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- close current split window
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
