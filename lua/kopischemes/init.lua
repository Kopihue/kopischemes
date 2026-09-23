local M = {}

M.setup = function (opts)
    local name  = opts["name"]
    local setup = opts["setup"]

    if name then
	-- correctly get the path of this module file
	local current_file = debug.getinfo(1, "S").source:sub(2)
	local kopipath = vim.fs.dirname(current_file)

	vim.opt.runtimepath:append(vim.fs.joinpath(kopipath, name))
	require(name).setup(setup)
    else
	print("You need to enter the name of a colorscheme!")
    end

end

return M
