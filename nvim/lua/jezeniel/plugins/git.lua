return {
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				signs_staged = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				on_attach = function(bufnr)
					local gitsigns = require("gitsigns")

					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end

					map("n", "]c", function()
						if vim.wo.diff then
							vim.cmd.normal({ "]c", bang = true })
						else
							gitsigns.nav_hunk("next")
						end
					end, { desc = "Next Hunk" })

					map("n", "[c", function()
						if vim.wo.diff then
							vim.cmd.normal({ "[c", bang = true })
						else
							gitsigns.nav_hunk("prev")
						end
					end, { desc = "Prev Hunk" })

					map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "[s]tage hunk" })
					map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "[r]eset hunk" })
					map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "[p]review hunk" })
					map("v", "<leader>hs", function()
						gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end, { desc = "[s]tage hunk" })
					map("v", "<leader>hr", function()
						gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end, { desc = "[r]eset hunk" })

					map("n", "<leader>hd", gitsigns.diffthis, { desc = "[d]iff this" })
					map("n", "<leader>htd", gitsigns.toggle_deleted, { desc = "toggle [d]eleted" })
					map("n", "<leader>htb", gitsigns.toggle_current_line_blame, { desc = "toggle [b]lame" })
				end,
			})
		end,
	},
}
