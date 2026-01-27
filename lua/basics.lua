vim.cmd("colorscheme gruvbox-material")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 30
vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.list = true
vim.opt.listchars = {
	tab = "󰌒 ",
	trail = "·",
	space = " ",
	extends = ">",
    precedes = "<",
}

-- Intend blank line
require("ibl").setup()

-- Autopairs
require("nvim-autopairs").setup()
