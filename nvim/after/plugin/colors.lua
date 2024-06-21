-- require("catppuccin").setup({
-- 	flavour = "macchiato",
-- 	background = {
-- 		light = "latte",
-- 		dark = "macchiato",
-- 	},
-- })

vim.opt.background = "dark"
require("gruvbox").setup({
	overrides = {
		SignColumn = { bg = "#282828" },
	},
})
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#665c54" })
vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#32302f" })
