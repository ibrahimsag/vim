require("mp.packer")
require("mp.remap")

vim.opt.clipboard:append { "unnamed" }

vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/tmp/vim/undo"

vim.o.nu = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 2
vim.o.updatetime = 50

vim.o.lazyredraw = false

vim.o.showmode = true

vim.o.foldmethod = 'indent'

vim.opt.foldopen:remove { "search" }
