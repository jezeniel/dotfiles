return {
	"stevearc/oil.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-r>"] = "actions.refresh",
				["<M-h>"] = { "actions.select", opts = { horizontal = true } },
			},
			view_options = {
				show_hidden = true,
			},
			float = {
				preview_split = "right",
			},
		})

		function OilCwd()
			vim.cmd({ cmd = "Oil", args = { vim.fn.getcwd() } })
		end

		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		vim.keymap.set("n", "_", OilCwd, { desc = "Open parent directory" })
	end,
}
