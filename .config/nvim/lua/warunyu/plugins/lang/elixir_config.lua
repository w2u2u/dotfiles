return {
	"elixir-tools/elixir-tools.nvim",
	version = "*",
	ft = "elixir",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local elixir = require("elixir")
		local elixirls = require("elixir.elixirls")
		local on_attach_utils = require("warunyu.utils.on-attach")

		elixir.setup({
			nextls = {
				enable = false,
			},
			credo = {
				enable = false,
			},
			mix = {
				enable = true,
			},
			elixirls = {
				enable = true,
				settings = elixirls.settings({
					dialyzerEnabled = true,
					enableTestLenses = true,
					fetchDeps = true,
					suggestSpecs = true,
				}),
				on_attach = function(client, bufnr)
					on_attach_utils(client, bufnr)

					vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
				end,
			},
		})
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
