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
				"clang-format", -- C++ Formatter
			},
			automatic_installation = true,
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"rust_analyzer", -- Rust 🦀
				"nim_langserver", -- Nim 👑
				"elixirls", -- Elixir 🧪
				"zls", -- Zig 󱐋
				"rubocop", -- Ruby 💎
				"gopls",
				"pylyzer", -- Python LSP
				"ruff_lsp", -- Python LSP
				"clangd", -- C++ LSP
				"tsserver", -- Typescript / Javascript
				"cssls",
				"html",
				"jsonls",
			},
			automatic_installation = true,
		})
	end,
}
