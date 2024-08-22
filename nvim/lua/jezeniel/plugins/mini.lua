return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.jump").setup()
		require("mini.comment").setup()
		require("mini.indentscope").setup({
			draw = {
				delay = 100,
				animation = require("mini.indentscope").gen_animation.none(),
				priority = 2,
			},
			symbol = "│",
		})

		local misc = require("mini.misc")
		vim.keymap.set("n", "<leader>bf", misc.zoom, { desc = "[f]ullscreen" })
	end,
}
