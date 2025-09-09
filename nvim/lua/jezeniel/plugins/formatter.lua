return {
	{
		"stevearc/conform.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			local conform = require("conform")
			local installer = require("mason-tool-installer")

			installer.setup({
				ensure_installed = {
					"isort",
					"black",
					"gofumpt",
					"prettier",
					"mypy",
					"clang-format",
				},
			})

			conform.setup({
				formatters_by_ft = {
					c = { "clang-format" },
					css = { "prettier" },
					go = { "gofumpt" },
					html = { "prettier" },
					javascript = { "prettier" },
					-- json = { "prettier" },
					lua = { "stylua" },
					python = { "isort", "black", "mypy" },
				},
			})

			vim.api.nvim_create_user_command("Format", function(args)
				conform.format({ bufnr = args.buf })
			end, {})

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					conform.format({ bufnr = args.buf })
				end,
			})
		end,
	},
}
