return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
				border = "rounded",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			ensure_installed = {
				"jq", -- Json Formatter
				"ruff", -- Python Formatter
			},
			automatic_installation = true,
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"rubocop", -- Ruby
				"gopls",
				"pylyzer", -- Python LSP
				"ruff_lsp",
				"tsserver", -- Typescript / Javascript
				"cssls",
				"html",
				"jsonls",
			},
			automatic_installation = true,
		})
	end,
}
