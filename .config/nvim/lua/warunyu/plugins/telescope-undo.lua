return {
	"debugloop/telescope-undo.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { -- note how they're inverted to above example
		{
			"nvim-telescope/telescope.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
	},
	keys = {
		{ -- lazy style key map
			"<leader>u",
			"<cmd>Telescope undo<cr>",
			desc = "undo history",
		},
	},
	opts = {
		-- don't use `defaults = { }` here, do this in the main telescope spec
		extensions = {
			undo = {
				-- telescope-undo.nvim config, see below
				side_by_side = true,
				layout_strategy = "vertical",
				layout_config = {
					preview_height = 0.8,
				},
				-- mappings = {
				-- 	i = {
				-- 		["<CR>"] = require("telescope-undo.actions").restore,
				-- 	},
				-- 	n = {
				-- 		["<CR>"] = require("telescope-undo.actions").restore,
				-- 	},
				-- },
			},
			-- no other extensions here, they can have their own spec too
		},
	},
	config = function(_, opts)
		-- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
		-- configs for us. We won't use data, as everything is in it's own namespace (telescope
		-- defaults, as well as each extension).
		require("telescope").setup(opts)
		require("telescope").load_extension("undo")

		vim.keymap.set(
			"n",
			"<C-CR>",
			require("telescope-undo.actions").restore,
			{ desc = "Telescope restore last undo" }
		)
	end,
}