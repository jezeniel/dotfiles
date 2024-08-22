return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local open_with_trouble = require("trouble.sources.telescope").open

		telescope.setup({
			defaults = {
				mappings = {
					i = { ["<c-t>"] = open_with_trouble },
					n = { ["<c-t>"] = open_with_trouble },
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = "git [f]iles" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[g]rep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[b]uffers" })
		vim.keymap.set("n", "<leader>fc", builtin.resume, { desc = "[c]ontinue" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[h]elp tags" })
		vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "[o]ld files" })
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "find files" })

		vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "[b]ranches" })
		vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "[s]tatus" })

		vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "[g]o to [d]efinition" })
		vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "[g]o to [r]eferences" })
	end,
}
