return {
	"lukas-reineke/indent-blankline.nvim",
	ft = { "nim", "zig", "elixir" },
	main = "ibl",
	config = function()
		require("ibl").setup({
			whitespace = {
				highlight = { "Function", "Label" },
				remove_blankline_trail = true,
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
				show_exact_scope = true,
				injected_languages = false,
				highlight = { "Function", "Label" },
				priority = 500,
			},
		})
	end,
}
