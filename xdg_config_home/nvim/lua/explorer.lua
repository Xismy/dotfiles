vim.pack.add({
	{ src = 'https://github.com/nvim-mini/mini.files', version = 'stable' },
})

local files = require('mini.files')
files.setup()

return {
	open = function ()
		local filename = vim.api.nvim_buf_get_name(0)

		if filename ~= "" and vim.loop.fs_stat(filename) then
			files.open(filename)
		else
			files.open()
		end
		files.reveal_cwd()
	end
}
