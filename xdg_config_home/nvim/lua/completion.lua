vim.pack.add({
	{ src = 'https://github.com/nvim-mini/mini.snippets', version = 'stable' },
	{ src = 'https://github.com/nvim-mini/mini.completion', version = 'stable' },
})
local snippets_plug = require('mini.snippets')
snippets_plug.setup({
	snippets = {
		snippets_plug.gen_loader.from_file(
		"~/.config/nvim/snippets/global.json"
		)
	},
})
require('mini.completion').setup()
