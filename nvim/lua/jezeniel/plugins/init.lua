return {
	{ "nvim-lua/plenary.nvim" },
	{ "tpope/vim-sleuth" },

	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
	{ "new plugin" },
	{ "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings

	{
		"andymass/vim-matchup",
		config = function()
			-- may set any options here
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end,
	},
}
