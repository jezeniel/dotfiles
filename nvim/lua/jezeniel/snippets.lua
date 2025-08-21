local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/jezeniel/snippets/*.lua", true)) do
	loadfile(ft_path)()
end

vim.keymap.set("n", "<leader>sr", "<cmd>source ~/.config/nvim/lua/jezeniel/snippets/c.lua<cr>")
