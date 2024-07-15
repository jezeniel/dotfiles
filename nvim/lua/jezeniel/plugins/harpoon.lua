return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon [a]dd" })

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<M-1>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon [1]" })
		vim.keymap.set("n", "<M-2>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon [2]" })
		vim.keymap.set("n", "<M-3>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon [3]" })
		vim.keymap.set("n", "<M-4>", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon [4]" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<M-p>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<M-n>", function()
			harpoon:list():next()
		end)
	end,
}
