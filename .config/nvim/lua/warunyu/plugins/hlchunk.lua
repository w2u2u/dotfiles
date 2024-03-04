return {
	"shellRaining/hlchunk.nvim",
	ft = { "lua", "rust", "cpp" },
	config = function()
		local colors_name = vim.g.colors_name
		local color = "#c6a0f6"

		if string.find(colors_name, "gruvbox") then
			color = "#fb4934"
		elseif string.find(colors_name, "material") then
			color = "#FFCB6B"
		elseif string.find(colors_name, "cyberdream") then
			color = "#ff5ea0"
		end

		require("hlchunk").setup({
			chunk = {
				enable = true,
				notify = true,
				use_treesitter = true,
				style = { color },
			},
			indent = {
				enable = false,
				use_treesitter = true,
			},
			line_num = {
				use_treesitter = true,
				style = { color },
			},
			blank = {
				enable = false,
			},
			context = {
				enable = false,
			},
		})
	end,
}
