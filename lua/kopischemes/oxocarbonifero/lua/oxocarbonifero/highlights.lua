local M = {}

M.apply = function(opts)
    local palette = require("oxocarbonifero.palette")

    local transparency = opts.transparency and "none" or palette.base00
    local bold = opts.bold or false
    local italic = opts.italic or false
    local indent = opts.transparency and palette.base01 or palette.base02

    local highlights = {
	["Normal"]       = { bg = transparency },
	["Function"]     = { fg = palette.base09 , bold = bold },
	["Special"]      = { fg = palette.base11 },
	["Statement"]    = { fg = palette.base11 },
	["Delimiter"]    = { fg = palette.base08 },
	["String"]       = { fg = palette.base13 },
	["Operator"]     = { fg = palette.base10 },
	["Constant"]     = { fg = palette.base07 },
	["@Variable"]    = { fg = palette.base05 },
	["Identifier"]   = { fg = palette.base09 },
	["LineNr"]       = { fg = palette.base02 },
	["CursorLineNr"] = { fg = palette.base08 },
	["CursorLine"]   = { bg = transparency },
	["Visual"]       = { bg = palette.base02 },
	["WinSeparator"] = { bg = transparency, fg = palette.base00 },
	["StatusLine"]   = { bg = palette.base00 },
	["StatusLineNC"] = { bg = palette.base00 },
	["Comment"]      = { fg = palette.base03, italic = italic },
	["Title"]        = { fg = palette.base08 },
	["Search"]       = { bg = palette.base02 },
	["IncSearch"]    = { bg = palette.base07 },
	["CurSearch"]    = { bg = palette.base07 },
	["Type"]         = { fg = palette.base15, bold = bold },

	-- lsp
	["DiagnosticSignError"]        = { fg = palette.base10 },
	["DiagnosticVirtualTextError"] = { fg = palette.base10 },
	["DiagnosticSignWarn"] 	       = { fg = palette.base15 },
	["DiagnosticVirtualTextWarn"]  = { fg = palette.base15 },
	["DiagnosticSignHint"] 	       = { fg = palette.base07 },
	["DiagnosticVirtualTextHint"]  = { fg = palette.base07 },
	["DiagnosticSignInfo"] 	       = { fg = palette.base14 },
	["DiagnosticVirtualTextInfo"]  = { fg = palette.base14 },

	-- blink.cmp
	["Pmenu"] 	            = { bg = transparency },
	["BlinkCmpMenuSelection"]   = { bg = palette.base02 },
	["BlinkCmpKind"] 	    = { fg = palette.base09 },
	["BlinkCmpKindFunction"]    = { fg = palette.base11 },
	["BlinkCmpKindSnippet"]     = { fg = palette.base08 },

	-- neotree
	["NeoTreeNormal"] 	   = { bg = transparency },
	["NeoTreeNormalNC"]        = { bg = transparency },
	["NeoTreeFloatBorder"]     = { fg = palette.base01 },
	["NeoTreeFloatTitle"]      = { fg = palette.base01 },
	["NeoTreeEndOfBuffer"]     = { fg = palette.base01 },
	["NeoTreeFileStats"]       = { fg = palette.base09 },
	["NeoTreeFileStatsHeader"] = { fg = palette.base08 },
	["NeoTreeFileName"]        = { fg = palette.base05 },
	["NeoTreeDirectoryIcon"]   = { fg = palette.base09 },
	["NeoTreeDirectoryName"]   = { fg = palette.base08 },
	["NeoTreeRootName"]        = { fg = palette.base08 },
	["NeoTreeDimText"]         = { fg = palette.base00 },
	["NeoTreeGitUntracked"]    = { fg = palette.base12 },

	-- ibl
	["IblIndent"]    = { fg = indent },
	["IblScope"]     = { fg = indent },

	-- Telescope
	["TelescopeSelection"]      = { bg = palette.base02 },
	["TelescopeResultsBorder"]  = { fg = palette.base02 },
	["TelescopeResultsTitle"]   = { fg = palette.base08 },
	["TelescopePromptBorder"]   = { fg = palette.base02 },
	["TelescopePromptTitle"]    = { fg = palette.base08 },
	["TelescopePromptNormal"]   = { fg = palette.base09 },
	["TelescopeSelectionCaret"] = { fg = palette.base08 },
	["TelescopeResultsCount"]   = { bg = palette.base08 },
	["TelescopePreviewTitle"]   = { fg = palette.base08 },
	["TelescopePreviewBorder"]  = { fg = palette.base02 },

	-- lua
	["@function.builtin.lua"] = { fg = palette.base09, bold = bold },

	-- python
	["@module.python"] 	     = { fg = palette.base15 },
	["@type.python"]    	     = { fg = palette.base07, bold = bold },
	["@type.builtin.python"]     = { fg = palette.base07, bold = bold },
	["@function.builtin.python"] = { fg = palette.base09, bold = bold },
	["@constructor.python"]      = { fg = palette.base09, bold = bold },
	["@constant.builtin.python"] = { fg = palette.base08 },
	["@variable.builtin.python"] = { fg = palette.base15 },

	-- c
	["@type.builtin.c"] = { fg = palette.base15 },
    }

    for field, value in pairs(highlights) do
	vim.api.nvim_set_hl(0, field, value)
    end
end

return M
