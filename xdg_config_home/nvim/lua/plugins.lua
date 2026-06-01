vim.pack.add({
	{ src = 'https://github.com/nvim-mini/mini.pick', version = 'stable' },
	{ src = 'https://github.com/nvim-mini/mini.files', version = 'stable' },
	{ src = 'https://github.com/ellisonleao/gruvbox.nvim' },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/mason-org/mason.nvim' },
	{ src = 'https://github.com/mason-org/mason-lspconfig.nvim' },

})

local lazy = {
}

vim.iter(vim.pack.get())
	:filter(function(p)
		return not p.active and not vim.tbl_contains(lazy, p.spec.name)
	end)
	:each(function (p)
		vim.pack.del({p.spec.name})
	end)

