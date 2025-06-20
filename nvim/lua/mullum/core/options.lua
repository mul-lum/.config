vim.cmd("let g:netrw_banner = 0 ")

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cmdheight=0

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.inccommand = "split"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'no'

-- backspace
vim.opt.backspace = { "start", "eol", "indent" }

--split windows
vim.opt.splitright = true --split vertical window to the right
vim.opt.splitbelow = true --split horizontal window to the bottom
vim.opt.numberwidth = 3 -- default is 4; increase for more space
vim.opt.statuscolumn = "%s%#LineNr#%l "

vim.opt.isfname:append("@-@")
vim.opt.updatetime = 100

-- title stuff
vim.o.title = true
vim.o.titlestring = 'nvim'
vim.o.showtabline= 0

-- clipboard
vim.opt.clipboard:append("unnamedplus") --use system clipboard as default
vim.opt.hlsearch = true

-- for easy mouse resizing, just incase
vim.opt.mouse = ""

-- gets rid of line with white spaces
vim.g.editorconfig = true
