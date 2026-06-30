require('starter')
require('completion')
require('explorer')
require('plugins')
require('mini.pick').setup()
require('gruvbox').setup(
	{
		transparent_mode = true
	}
)
require('mason').setup()
require('mason-lspconfig').setup(
	{
		ensure_installed = {
			"clangd"
		}
	}
)
--require('oil').setup()

vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.list = true
vim.opt.listchars='tab:,leadtab:  ,lead:·,trail:·'
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd.colorscheme('gruvbox')

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.keymap.set('n', '<leader>c', ':e '..vim.fn.stdpath("config")..'<CR>')
vim.keymap.set('n', '<leader>e', require('explorer').open)
