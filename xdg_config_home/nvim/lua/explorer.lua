vim.pack.add({
	{ src = 'https://github.com/nvim-mini/mini.files', version = 'stable' },
})

local files = require('mini.files')
files.setup()

local split_open_cb = function(direction)
	return function()
		local cur_target = MiniFiles.get_explorer_state().target_window
		local new_target = vim.api.nvim_win_call(cur_target, function()
			vim.cmd(direction .. ' split')
			return vim.api.nvim_get_current_win()
		end)

		MiniFiles.set_target_window(new_target)
		MiniFiles.go_in()
		MiniFiles.close()
	end
end

vim.api.nvim_create_autocmd('User', {
	pattern = 'MiniFilesBufferCreate',
	callback = function(args)
		local buf_id = args.data.buf_id
		vim.keymap.set('n', '<C-h>', split_open_cb('leftavobe vertical'), { buffer = buf_id, desc = 'Split left' })
		vim.keymap.set('n', '<C-j>', split_open_cb('belowright horizontal'), { buffer = buf_id, desc = 'Split down' })
		vim.keymap.set('n', '<C-k>', split_open_cb('leftavobe horizontal'), { buffer = buf_id, desc = 'Split up' })
		vim.keymap.set('n', '<C-l>', split_open_cb('belowright vertical'), { buffer = buf_id, desc = 'Split right' })
	end,
})


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
