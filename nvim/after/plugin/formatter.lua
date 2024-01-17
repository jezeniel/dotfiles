local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		python = { "isort", "black" },
		lua = { "stylua" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})
