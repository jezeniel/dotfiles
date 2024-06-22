require("lualine").setup({
	options = {
		theme = "eldritch",
	},
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
