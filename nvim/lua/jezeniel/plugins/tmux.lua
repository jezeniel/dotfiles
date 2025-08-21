return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		local nvim_tmux_nav = require("nvim-tmux-navigation")

		nvim_tmux_nav.setup({
			disable_when_zoomed = true, -- defaults to false
			keybindings = {
				up = "<C-k>",
				down = "<C-j>",
				left = "<C-h>",
				right = "<C-l>",
				last_active = "<C-\\>",
				next = "<C-Space>",
			},
		})
	end,
}
