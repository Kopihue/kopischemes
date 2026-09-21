local M = {}

M.setup = function (opts)
    name  = opts["name"]
    setup = opts["setup"]

    if name then
	local kopipath = "~/.local/share/nvim/plugins/kopischemes/lua/kopischemes/"
	vim.opt.runtimepath:append(kopipath .. name)
	require(name).setup(setup)
    else
	print(name .. "is not a known colorscheme")
    end

end

return M
