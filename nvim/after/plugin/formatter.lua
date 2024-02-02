local conform = require("conform")
local installer = require("mason-tool-installer")

installer.setup({
	ensure_installed = {
		"isort",
		"black",
		"gofumpt",
		"prettier",
	},
})

conform.setup({
	formatters_by_ft = {
		python = { "isort", "black" },
		html = { "prettier" },
		css = { "prettier" },
		javascript = { "prettier" },
		lua = { "stylua" },
		go = { "gofumpt" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})
