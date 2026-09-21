local M = {}

M.setup = function (opts)
    name  = opts["name"]
    setup = opts["setup"]

    if name then
	local kopipath = "~/.local/share/nvim/plugins/kopischemes/lua/kopischemes/"
	vim.opt.runtimepath:append(kopipath .. name)
	require(name).setup(setup)
    else
	print("You need to enter the name of a colorscheme!")
    end

end

return M
