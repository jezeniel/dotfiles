require("lualine").setup({
	winbar = {
		lualine_c = {
			"navic",
			color_correction = nil,
			navic_opts = nil,
		},
	},
	sections = {
		lualine_c = {
			{ "filename", path = 1 },
		},
	},
})
