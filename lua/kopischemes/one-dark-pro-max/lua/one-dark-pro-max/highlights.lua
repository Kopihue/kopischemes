local M = {}

M.apply = function(opts)
    local palette = require("one-dark-pro-max.palette")

    local transparency = opts.transparency and "none" or palette.base00
    local bold = opts.bold or false
    local italic = opts.italic or false

    local highlights = {
	["Normal"]       = { bg = transparency },
	["CursorLine"]   = { bg = palette.base01 },
	["CursorLineNr"] = { fg = palette.base10 },
	["Statement"]    = { fg = palette.base05 },
	["@variable"]    = { fg = palette.base10 },
	["Function"]     = { fg = palette.base06, bold = bold },
	["Special"]      = { fg = palette.base08 },
	["String"]       = { fg = palette.base04, italic = italic },
	["Delimiter"]    = { fg = palette.base09 },
	["Operator"]     = { fg = palette.base11, italic = italic },
	["Identifier"]   = { fg = palette.base05 },
	["Constant"]     = { fg = palette.base07 },
	["Type"]   	 = { fg = palette.base08 },
	["LineNr"]       = { fg = palette.base02 },
	["Comment"]      = { fg = palette.base03, italic = italic },
	["Visual"]       = { bg = palette.base02 },
	["Search"]	 = { bg = palette.base02 },
	["CurSearch"]    = { bg = palette.base02 },
	["Changed"]      = { fg = palette.base10 },
	["WinSeparator"] = { fg = palette.base00 },

	-- lua
	["@constructor.lua"] = { fg = palette.base07 },

	-- python
	["@module.python"]           = { fg = palette.base10 },
	["@function.builtin.python"] = { fg = palette.base06 },
	["@constructor.python"]      = { fg = palette.base06 },

	-- ibl
	["IblIndent"] = { fg = palette.base01 },
	["IblScope"]  = { fg = palette.base01 },

	-- lsp
	["DiagnosticSignError"]        = { fg = palette.base10 },
	["DiagnosticVirtualTextError"] = { fg = palette.base10 },
	["DiagnosticSignWarn"] 	       = { fg = palette.base08 },
	["DiagnosticVirtualTextWarn"]  = { fg = palette.base08 },
	["DiagnosticSignHint"] 	       = { fg = palette.base06 },
	["DiagnosticVirtualTextHint"]  = { fg = palette.base06 },
	["DiagnosticSignInfo"] 	       = { fg = palette.base04 },
	["DiagnosticVirtualTextInfo"]  = { fg = palette.base04 },

	-- blink.cmp
	["Pmenu"] 		    = { bg = palette.base01 },
	["BlinkCmpMenuSelection"]   = { bg = palette.base02 },
	["BlinkCmpKind"] 	    = { fg = palette.base10 },
	["BlinkCmpKindFunction"]    = { fg = palette.base05 },
	["BlinkCmpKindSnippet"]     = { fg = palette.base04 },

	-- Telescope
	["TelescopeSelection"]      = { bg = palette.base02 },
	["TelescopeResultsBorder"]  = { fg = palette.base01 },
	["TelescopeResultsTitle"]   = { fg = palette.base10 },
	["TelescopePromptBorder"]   = { fg = palette.base01 },
	["TelescopePromptTitle"]    = { fg = palette.base10 },
	["TelescopePromptNormal"]   = { fg = palette.base03 },
	["TelescopeSelectionCaret"] = { fg = palette.base10 },
	["TelescopeResultsCount"]   = { bg = palette.base04 },
	["TelescopePreviewTitle"]   = { fg = palette.base10 },
	["TelescopePreviewBorder"]  = { fg = palette.base01 },

	-- neotree
	["NeoTreeNormal"] 	   = { bg = transparency },
	["NeoTreeNormalNC"]        = { bg = transparency },
	["NeoTreeFloatBorder"]     = { fg = palette.base01 },
	["NeoTreeFloatTitle"]      = { fg = palette.base01 },
	["NeoTreeEndOfBuffer"]     = { fg = palette.base01 },
	["NeoTreeFileStats"]       = { fg = palette.base06 },
	["NeoTreeFileStatsHeader"] = { fg = palette.base04 },
	["NeoTreeFileName"]        = { fg = palette.base05 },
	["NeoTreeDirectoryIcon"]   = { fg = palette.base08 },
	["NeoTreeDirectoryName"]   = { fg = palette.base10 },
	["NeoTreeRootName"]        = { fg = palette.base07 },
	["NeoTreeGitUntracked"]    = { fg = palette.base07 },
    }

    for field, value in pairs(highlights) do
	vim.api.nvim_set_hl(0, field, value)
    end
end

return M
