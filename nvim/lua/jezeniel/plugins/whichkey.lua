return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		local wk = require("which-key")
		wk.setup()

		wk.add({
			{ "<leader>f", group = "Telescope" },
			{ "<leader>g", group = "Git Telescope" },
			{ "<leader>h", group = "Gitsigns" },
			{ "<leader>b", group = "Buffer" },
			{ "<leader>x", group = "Trouble" },
			{ "g", group = "[g]o" },
		})
	end,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
