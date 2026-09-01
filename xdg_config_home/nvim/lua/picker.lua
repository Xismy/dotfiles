vim.pack.add({
	{ src = 'https://github.com/nvim-mini/mini.pick', version = 'stable' },
})

local pick = require('mini.pick')
pick.setup()

vim.keymap.set('n', '<leader>gr', pick.builtin.grep_live, { desc = 'Grep live' })
vim.keymap.set('n', '<leader>gw', function() 
	pick.builtin.grep({ pattern = vim.fn.expand('<cword>') }) 
	print(vim.fn.expand('cword'))
end, { desc = 'Grep cword' })
vim.keymap.set('n', '<leader>gW', function() 
	pick.builtin.grep({ pattern = vim.fn.expand('<CWORD>') }) 
end, { desc = 'Grep CWORD' })
