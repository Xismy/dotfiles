vim.pack.add({
	{ src = 'https://github.com/folke/which-key.nvim', version = 'stable' },
})

local wk = require('which-key')
wk.setup()
wk.add({
	{ "gr", group = 'LSP' },
	{ "<leader>gr", group = 'Grep' },
})

