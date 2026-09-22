local M = {}

M.apply = function (opts) local palette = require("after-dark.palette")

    local transparency = opts.transparency and "none" or palette.base00
    local bold = opts.bold or false
    local italic = opts.italic or false

    local highlights = {
	["Normal"]		= { bg = transparency },
	["Statement"]		= { fg = palette.base14, bold = bold },
	["@variable"]		= { fg = palette.base10 },
	["Function"]		= { fg = palette.base12 },
	["Special"]		= { fg = palette.base12 },
	["Constant"]		= { fg = palette.base09 },
	["String"]		= { fg = palette.base11, italic = italic },
	["Delimiter"]		= { fg = palette.base03 },
	["Operator"]		= { fg = palette.base14 },
	["Identifier"]		= { fg = palette.base08 },
	["CursorLine"]		= { bg = palette.base01 },
	["CursorLineNr"]	= { fg = palette.base12 },
	["Visual"]		= { bg = palette.base01 },
	["Search"]		= { bg = palette.base02 },
	["CurSearch"]		= { bg = palette.base02 },
	["Comment"]		= { fg = palette.base16 },
	["Type"]   	 	= { fg = palette.base15 },
	["WinSeparator"] 	= { fg = palette.base01 },
	["LineNr"]       	= { fg = palette.base02 },
	["EndOfBuffer"]		= { fg = palette.base02 },
	["StatusLine"]  	= { bg = palette.base01, fg = palette.base04 },
	["StatusLineNC"]  	= { bg = palette.base01, fg = palette.base04 },
	["MsgArea"] 		= { fg = palette.base04 },

	-- python
	["@module.python"]			= { fg = palette.base10 },
	["@function.builtin.python"]		= { fg = palette.base12 },
	["@constructor.python"]			= { fg = palette.base12 },
	["@variable.builtin.python"]		= { fg = palette.base13 },
	["@type.builtin.python"]		= { fg = palette.base09 },

	-- ibl
	["IblIndent"] = { fg = palette.base02 },
	["IblScope"]  = { fg = palette.base02 },

	-- lsp
	["DiagnosticSignError"]        = { fg = palette.base15 },
	["DiagnosticVirtualTextError"] = { fg = palette.base15 },
	["DiagnosticSignWarn"] 	       = { fg = palette.base12 },
	["DiagnosticVirtualTextWarn"]  = { fg = palette.base12 },
	["DiagnosticSignHint"] 	       = { fg = palette.base16 },
	["DiagnosticVirtualTextHint"]  = { fg = palette.base16 },
	["DiagnosticSignInfo"] 	       = { fg = palette.base13 },
	["DiagnosticVirtualTextInfo"]  = { fg = palette.base13 },

	-- blink.cmp
	["Pmenu"] 		    = { bg = palette.base01 },
	["BlinkCmpMenuSelection"]   = { bg = palette.base02 },
	["BlinkCmpKind"] 	    = { fg = palette.base14 },
	["BlinkCmpKindFunction"]    = { fg = palette.base12 },
	["BlinkCmpKindSnippet"]     = { fg = palette.base11 },

	-- Telescope
	["TelescopeSelection"]      = { bg = palette.base02 },
	["TelescopeResultsBorder"]  = { fg = palette.base02 },
	["TelescopeResultsTitle"]   = { fg = palette.base12 },
	["TelescopePromptBorder"]   = { fg = palette.base02 },
	["TelescopePromptTitle"]    = { fg = palette.base12 },
	["TelescopePromptNormal"]   = { fg = palette.base12 },
	["TelescopeSelectionCaret"] = { fg = palette.base12 },
	["TelescopeResultsCount"]   = { bg = palette.base12 },
	["TelescopePreviewBorder"]  = { fg = palette.base02 },
	["TelescopePreviewTitle"]   = { fg = palette.base12 },

	-- C
	["@type.builtin.c"]		= { fg = palette.base15 },
	["@string.escape.c"]		= { fg = palette.base13 },
    }

    for field, value in pairs(highlights) do
	vim.api.nvim_set_hl(0, field, value)
    end
end

return M
