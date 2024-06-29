return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "eldritch",
			},
			sections = {
				lualine_c = {
					{ "filename", path = 1 },
				},
			},
		})
	end,
}
