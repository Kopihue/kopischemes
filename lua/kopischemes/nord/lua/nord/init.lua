local palette = require("nord.palette")
local M = {}

local highlights = function(opts)
    local bold = opts.bold or false
    local italic = opts.italic or false
    local background = opts.transparency and "none" or palette.base00
    local cursor_line = opts.transparency and "none" or palette.base00
    local line_number = opts.line_number_pink and palette.base15 or palette.base04

    local highlights = {
	["Normal"] = { bg = background },
	["Comment"] = { fg = palette.base03, italic = italic },
	["Keyword"] = { fg = palette.base09 },
	["Statement"] = { fg = palette.base07 },
	["Delimiter"] = { fg = palette.base09 },
	["Special"] = { fg = palette.base07, bold = bold },
	["String"] = { fg = palette.base14 },
	["Operator"] = { fg = palette.base10 },
	["Function"] = { fg = palette.base08 },
	["Identifier"] = { fg = palette.base09 },
	["Constant"] = { fg = palette.base15 },
	["Type"] = { fg = palette.base07 },
	["Statusline"] = { bg = background },
	["StatuslineNC"] = { bg = background },
	["CursorLine"] = { bg = background },
	["CursorLineNr"] = { fg = line_number },
	["LineNr"] = { fg = palette.base02 },
	["Pmenu"] = { bg = background },
	["Directory"] = { fg = palette.base09 },
	["Visual"] = { bg = palette.base00 },
	["Search"] = { bg = palette.base00 },
	["CurSearch"] = { bg = palette.base00 },
	["WinSeparator"] = { bg = background, fg = palette.base00, },

	-- lsp
	["DiagnosticSignError"]        = { fg = palette.base11 },
	["DiagnosticVirtualTextError"] = { fg = palette.base11 },
	["DiagnosticSignWarn"] 	   = { fg = palette.base13 },
	["DiagnosticVirtualTextWarn"]  = { fg = palette.base13 },
	["DiagnosticSignHint"] 	   = { fg = palette.base14 },
	["DiagnosticVirtualTextHint"]  = { fg = palette.base14 },
	["DiagnosticSignInfo"] 	   = { fg = palette.base10 },
	["DiagnosticVirtualTextInfo"]  = { fg = palette.base10 },

	-- blink.cmp
	["Pmenu"] 	          = { bg = background },
	["BlinkCmpMenuSelection"] = { bg = palette.base00 },
	["BlinkCmpKind"]      	  = { fg = palette.base07 },
	["BlinkCmpKindFunction"]  = { fg = palette.base15 },
	["BlinkCmpKindSnippet"]   = { fg = palette.base14 },

	-- neotree
	["NeoTreeNormal"] 	   = { bg = background },
	["NeoTreeNormalNC"]        = { bg = background },
	["NeoTreeFloatBorder"]     = { fg = palette.base01 },
	["NeoTreeFloatTitle"]      = { fg = palette.base01 },
	["NeoTreeEndOfBuffer"]     = { fg = palette.base01 },
	["NeoTreeFileStats"]       = { fg = palette.base09 },
	["NeoTreeFileStatsHeader"] = { fg = palette.base08 },
	["NeoTreeFileName"]        = { fg = palette.base05 },
	["NeoTreeDirectoryIcon"]   = { fg = palette.base09 },
	["NeoTreeDirectoryName"]   = { fg = palette.base08 },
	["NeoTreeRootName"]        = { fg = palette.base08 },

	-- ibl
	["IblIndent"]    = { fg = palette.base00 },
	["IblScope"]     = { fg = palette.base00 },

	-- Telescope
	["TelescopeSelection"]      = { bg = palette.base02 },
	["TelescopeResultsBorder"]  = { fg = palette.base01 },
	["TelescopeResultsTitle"]   = { fg = palette.base07 },
	["TelescopePromptBorder"]   = { fg = palette.base01 },
	["TelescopePromptTitle"]    = { fg = palette.base07 },
	["TelescopePromptNormal"]   = { fg = palette.base09 },
	["TelescopeSelectionCaret"] = { fg = palette.base07 },
	["TelescopeResultsCount"]   = { bg = palette.base07 },
	["TelescopePreviewTitle"]   = { fg = palette.base07 },
	["TelescopePreviewBorder"]  = { fg = palette.base01 },
    }

    return highlights
end

M.setup = function(opts)
    for field, value in pairs(highlights(opts)) do
	vim.api.nvim_set_hl(0, field, value)
    end
end

return M
