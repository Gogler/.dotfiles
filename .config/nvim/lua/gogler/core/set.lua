local tabsize = 4
vim.o.tabstop=tabsize
vim.o.softtabstop=tabsize
vim.o.shiftwidth=tabsize
vim.o.expandtab = true
vim.o.autoindent = true

vim.o.smartindent = true

vim.o.hidden= true

vim.cmd("se mouse=")
-- vim.cmd("set clipboard=unnamed")
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.wrap = false

vim.o.number= true
vim.o.laststatus = 2
vim.o.cmdheight = 1
vim.o.showcmd = true
vim.o.wildmenu = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
vim.o.sidescrolloff= 8

vim.o.list = true

vim.o.swapfile = false
vim.o.backup = false

vim.o.guicursor = ""

vim.g.mapleader = " "

vim.o.clipboard="unnamedplus"
