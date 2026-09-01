local background = '\
⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⣶⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣤⣴⣶⣿⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣦⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣴⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢌⠉⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⡩⠏⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡰⠁⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⣿⣿⡟⠃⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠛⣿⣿⣿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⠤⠤⠤⠤⠿⠿⠿⠿⠿⠿⠤⠤⠤⠤⠤⠤⠤⠿⠿⠿⠿⠿⠿⠿⠧⠤⠤⠤⠤⠼⠿⠿⠿⠿⠿⠧⠤⠤⠤⠤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠸⠤⠤⠤⠤⠤⢤⠀⠀⡤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⡄⠀⢠⠤⠤⠤⠤⠤⠼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⢀⣤⣴⣿⣿⣿⣿⣧⣤⣄⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⡇⠀⠀⠀⠀⠀⢀⢴⡄⠀⠀⠀⠀⠀⠀⢰⢄⠀⠀⠀⠀⠀⠀⡇⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⢸⠀⠀⡇⠀⠀⠀⢀⠔⠁⢸⠘⢄⠀⠀⠀⠀⠀⢸⠀⠑⢄⠀⠀⠀⠀⡇⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠉⠉⠉⠻⣿⣯⣀⣴⠚⣉⣤⣾⣿⣿⣿⣶⣄⡀⠀⢸⠀⠀⡇⠀⠀⢰⣿⣄⠀⢸⠀⠈⢢⠀⠀⠀⠀⢸⠀⠀⠀⢱⠀⠀⠀⡇⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠙⣷⠠⠿⠿⣿⢿⣿⣿⣿⣿⣷⡄⢸⠀⠀⡇⠀⠀⢸⣿⣿⣧⣸⠀⠀⠀⠳⡀⠀⠀⢸⠀⠀⠀⢸⠀⠀⠀⡇⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⢀⣿⡶⠖⠚⠛⠋⠉⠁⠀⠀⢶⣶⣾⣶⣶⣷⣶⡶⢸⣿⣿⣿⣿⣄⠀⠀⠀⠑⡄⠀⢸⠀⠀⠀⢸⠰⣶⣶⣷⣶⣾⣶⣶⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⣾⡏⠀⠀⠀⠀⠀⠰⡖⣶⠂⢸⠀⠀⠀⠀⠀⠀⡇⢸⣿⣿⣿⣿⠈⢆⠀⠀⠀⠈⢆⢸⠀⠀⠀⢸⠀⡇⠀⠀⠀⠀⠀⢸⠐⡖⢲⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⣿⣧⣄⡀⣤⠀⠀⠀⣧⣧⣤⣼⠀⠀⠀⠀⠀⠀⡇⢸⣿⣿⣿⣿⠀⠀⢣⡀⠀⠀⠈⢫⡀⠀⠀⢨⠀⡇⠀⠀⠀⠀⠀⢸⣤⣧⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣆⠀⣀⡄⡇⡜⣀⢸⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⣿⣿⠀⠀⠀⠱⡄⠀⠀⢸⠈⢆⠀⢸⠀⣿⣿⣿⣿⣿⣿⣿⠀⡇⢸⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀\
⠀⠘⠻⠀⠀⠀⠀⠀⠀⣼⣿⣿⠀⠛⠃⡇⡏⠛⢸⠀⠀⠀⠀⠀⠀⡇⠸⣿⣿⣿⣿⠀⠀⠀⠀⠘⢄⠀⢸⠀⠀⠑⡼⠀⡇⠀⠀⠀⠀⠀⢸⠀⡇⢸⠀⠀⣼⣿⣄⠀⠀⠀⠀⠀⠀\
⠀⠀⠀⠀⢀⠀⠀⠀⣼⣿⣿⠇⢀⣄⣶⣷⣷⣶⣾⣿⣿⣿⣿⣿⣿⡇⠀⠈⠻⣿⣿⠀⠀⠀⠀⠀⠈⢢⢸⠀⡠⠊⠀⠀⣿⣿⣿⣿⣿⣿⣿⣶⡇⢸⠙⠛⣿⣿⡟⠛⠁⠀⠀⠀⣀\
⠀⠀⠀⣿⣷⢂⣤⣸⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣼⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠈⠻⠀⠀⠀⠀⠀⠀⠀⠻⠊⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⡇⠸⣤⡀⢿⣿⡗⣀⠀⠀⠀⠀⠉\
⠀⠀⣼⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣽⣿⣯⣀⣶⣶⣦\
'


vim.pack.add({{ src = 'https://github.com/nvim-mini/mini.starter', version = 'stable' }})

local starter = require('mini.starter')
local opened_project = nil

local function gen_open_project(name, dir)
	return function()
		opened_project = name
		vim.fn.chdir(dir)
		starter.refresh()
	end
end

local function close_project()
	opened_project = nill
	starter.refresh()
end


local function projects(projects_path, section, exclude)
	local projects = vim.fn.readdir(projects_path)
	if not projects then return {} end
	local items = {}
	for _, project_name in ipairs(projects) do
		local project_path = projects_path .. '/' .. project_name
		if vim.fn.isdirectory(project_path) == 1 and project_name ~= exclude then
			table.insert(items, { section = section, name = project_name, action = gen_open_project(project_name, project_path) })
		end
	end
	return items
end

starter.setup({
	items = {
		{ section = 'Config', name = 'Edit', action = 'e ' .. vim.fn.stdpath("config") },
		function()
			if opened_project then
				return { section = opened_project, name = 'Close', action = close_project }
			else
				return {
					projects(vim.env.HOME .. '/projects', 'Projects', 'forks'),
					projects(vim.env.HOME .. '/projects/forks', 'Forked projects', ''),
				}
			end
		end,
	},
	header = background,
})
