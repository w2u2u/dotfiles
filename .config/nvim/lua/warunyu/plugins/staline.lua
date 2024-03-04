return {
	"tamton-aquib/staline.nvim",
	config = function()
		require("staline").setup({
			defaults = {
				expand_null_ls = false, -- This expands out all the null-ls sources to be shown
				left_separator = "", -- "",
				right_separator = "", -- "",
				full_path = false,
				line_column = " %l/%L 󰗈 :%c 並%p%% ", -- `:h stl` to see all flags.

				fg = "#000000", -- Foreground text color.
				bg = "none", -- Default background is transparent.
				inactive_color = "#303030",
				inactive_bgcolor = "none",
				true_colors = true, -- true lsp colors.
				font_active = "none", -- "bold", "italic", "bold,italic", etc

				mod_symbol = "  ",
				lsp_client_symbol = "󰧑 ",
				lsp_client_character_length = 12, -- Shorten LSP client names.
				branch_symbol = " ",
				cool_symbol = " ", -- Change this to override default OS icon.
				null_ls_symbol = "", -- A symbol to indicate that a source is coming from null-ls
			},
			mode_colors = {
				n = "#a6da95",
				i = "#c6a0f6",
				c = "#f5a97f",
				v = "#8aadf4", -- etc..
			},
			mode_icons = {
				n = "󰌌 ",
				i = " ",
				c = " ",
				v = "󱊁 ", -- etc..
			},
			sections = {
				left = { "right_sep", "-mode", "left_sep", "cwd", "right_sep", "-file_name", "left_sep" },
				-- mid = { "right_sep", "-branch", "left_sep" },
				mid = { "branch" },
				right = {
					"lsp",
					"right_sep",
					"-lsp_name",
					"left_sep",
					"cool_symbol",
					"right_sep",
					"-line_column",
					"left_sep",
				},
			},
			inactive_sections = {
				left = { "branch" },
				mid = { "file_name" },
				right = { "line_column" },
			},
			special_table = {
				-- NvimTree = { "NvimTree", " " },
			},
			lsp_symbols = {
				Error = " ",
				Info = " ",
				Warn = " ",
				Hint = " ",
			},
		})

		require("stabline").setup({
			style = "bubble", -- others: arrow, slant, bubble
			stab_left = "",
			stab_right = " ",

			-- fg       = Default is fg of "Normal".
			-- bg       = Default is bg of "Normal".
			bg = "#FDFEFE",
			fg = "black",
			inactive_bg = "#1e2127",
			inactive_fg = "#aaaaaa",
			-- stab_bg  = Default is darker version of bg.,

			font_active = "bold",
			exclude_fts = { "NvimTree", "dashboard", "lir" },
			stab_start = "", -- The starting of stabline
			stab_end = "",
			numbers = function(bufn, n)
				return "#" .. n .. " "
			end,
		})

		vim.keymap.set("n", "<Tab>", "<Cmd>bNext<CR>", { desc = "Next buffer" })
		vim.keymap.set("n", "<leader>x", "<Cmd>bdelete<CR>", { desc = "Close buffer" })
	end,
}
