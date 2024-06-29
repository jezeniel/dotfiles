return {
	"mbbill/undotree",
	config = function()
		vim.g.undotree_SplitWidth = 30
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
