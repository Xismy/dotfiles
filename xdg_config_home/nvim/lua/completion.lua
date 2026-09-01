vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		vim.lsp.completion.enable(true, ev.data.client_id, ev.buf,
		{
			autotrigger = false,
		})
	end,
})


vim.opt.completeopt = 'fuzzy,menuone,noselect,popup'

vim.keymap.set("i", "<C-j>", function()
	if vim.fn.pumvisible() == 1 then
		return "<Down>"
	end
	return "<C-X><C-O>"
end, { expr = true })

vim.keymap.set("i", "<C-k>", function()
	if vim.fn.pumvisible() == 1 then
		return "<Up>"
	end
	return "<C-X><C-O>"
end, { expr = true })

vim.keymap.set("i", "<C-l>", function()
	if vim.fn.pumvisible() == 1 then
		return "<Return>"
	end
	return "<C-l>"
end, { expr = true })
