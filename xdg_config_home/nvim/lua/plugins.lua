local lazy = {
}

vim.iter(vim.pack.get())
	:filter(function(p)
		return not p.active and not vim.tbl_contains(lazy, p.spec.name)
	end)
	:each(function (p)
		vim.pack.del({p.spec.name})
	end)

