return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter-context",
			config = function()
				require("treesitter-context").setup({
					separator = "-",
				})
			end,
		},
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			config = function()
				require("nvim-treesitter.configs").setup({
					textobjects = {
						move = {
							enable = true,
							set_jumps = true,

							goto_next_start = {
								["<C-l>"] = {
									query = "@parameter.inner",
									desc = "Go to next parameter",
								},
								["<C-j>"] = {
									query = { "@function.outer", "@statement.outer" },
									desc = "Go to next function/statement",
								},
							},

							goto_previous_start = {
								["<C-h>"] = {
									query = "@parameter.inner",
									desc = "Go to previous parameter",
								},
								["<C-k>"] = {
									query = { "@function.outer", "@statement.outer" },
									desc = "Go to previous function/statement",
								},
							},
						},
					},
				})
			end,
		},
	},
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			auto_install = true,
			ensure_installed = {
				"lua",
				"rust",
				"ruby",
				"go",
				"zig",
				"python",
				"typescript",
				"javascript",
				"html",
				"css",
				"json",
			},
			sync_install = true,
			highlight = {
				enable = true,
				disable = { "json" },
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_decremental = "<BS>",
					node_incremental = "<CR>",
					scope_incremental = "false",
				},
			},
		})
	end,
}
