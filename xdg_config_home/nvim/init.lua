vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
require('starter')
local explorer = require('explorer')
require('picker')
require('theme')
require('lsp')
require('completion')
require('keys')
require('ai')
require('plugins')

vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.list = true
vim.opt.listchars='tab:,leadtab:  ,lead:·,trail:·'
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.keymap.set('n', '<leader><leader>', MiniStarter.open, { desc = 'Show starter' })
vim.keymap.set('n', '<leader>e', explorer.open, { desc = 'Open explorer' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostics' })
vim.cmd.colorscheme('gruvbox')
