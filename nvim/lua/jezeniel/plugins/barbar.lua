return {
	"romgrk/barbar.nvim",
	config = function()
		local opts = { noremap = true, silent = true }

		vim.g.barbar_auto_setup = false

		require("barbar").setup({
			animation = false,
			icons = {
				pinned = { button = "", filename = true },
			},
		})

		vim.keymap.set("n", "<leader>.", "<Cmd>BufferNext<CR>", opts)
		vim.keymap.set("n", "<leader>,", "<Cmd>BufferPrevious<CR>", opts)
		vim.keymap.set("n", "<leader><", "<Cmd>BufferMovePrevious<CR>", opts)
		vim.keymap.set("n", "<leader>>", "<Cmd>BufferMoveNext<CR>", opts)

		vim.keymap.set("n", "<leader>x", "<Cmd>BufferClose<CR>", opts)
		vim.keymap.set("n", "<leader>X", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)
		vim.keymap.set("n", "<leader>bp", "<Cmd>BufferPin<CR>", opts)
	end,
}
