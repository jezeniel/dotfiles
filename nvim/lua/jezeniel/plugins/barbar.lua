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

		vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
		vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
		vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
		vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

		vim.keymap.set("n", "<leader>bd", "<Cmd>BufferDelete<CR>", opts)
		vim.keymap.set("n", "<leader>bD", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)
		vim.keymap.set("n", "<leader>bp", "<Cmd>BufferPin<CR>", opts)
	end,
}
