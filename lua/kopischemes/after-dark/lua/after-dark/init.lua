local highlights = require("after-dark.highlights")
local M = {}

M.opts = {
    transparency = false,
    italic = true,
    bold = true,
}

M.setup = function(opts)
    if opts then
	for key, value in pairs(opts) do
	    M.opts[key] = value
	end

	highlights.apply(M.opts)
    end
end

return M
