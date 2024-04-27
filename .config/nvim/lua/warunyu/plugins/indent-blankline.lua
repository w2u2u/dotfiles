return {
	"lukas-reineke/indent-blankline.nvim",
	enabled = false,
	ft = { "ruby", "nim", "zig", "elixir" },
	main = "ibl",
	config = function()
		require("ibl").setup({
			whitespace = {
				remove_blankline_trail = true,
			},
			scope = {
				show_start = false,
				highlight = { "SpecialKey", "Function", "Function" },
			},
		})
	end,
}
