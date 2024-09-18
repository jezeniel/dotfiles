return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "tokyonight",
			},
			sections = {
				lualine_b = {
					{
						"branch",
						fmt = function(str)
							local ml = 15
							return #str <= ml and str or (str:sub(1, ml - 3) .. "...")
						end,
					},
					"diff",
					"diagnostics",
				},
				lualine_c = {
					{ "filename", path = 1 },
				},
			},
		})
	end,
}
