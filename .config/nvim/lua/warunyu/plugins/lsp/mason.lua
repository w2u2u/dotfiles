return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_dap = require("mason-nvim-dap")

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
				"crystalline", -- Crystal 🔮
				"rubocop", -- Ruby 💎
				"solargraph", -- Ruby 💎
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

		mason_dap.setup({
			ensure_installed = {
				"codelldb",
				"elixirls",
			},
			automatic_installation = true,
		})
	end,
}
