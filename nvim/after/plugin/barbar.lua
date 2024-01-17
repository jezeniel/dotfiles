local opts = { noremap = true, silent = true }

vim.g.barbar_auto_setup = false

require("barbar").setup({ animation = false })

vim.keymap.set("n", "<leader>]", "<Cmd>BufferNext<CR>", opts)
vim.keymap.set("n", "<leader>[", "<Cmd>BufferPrevious<CR>", opts)

vim.keymap.set("n", "<leader>{", "<Cmd>BufferMovePrevious<CR>", opts)
vim.keymap.set("n", "<leader>}", "<Cmd>BufferMoveNext<CR>", opts)
vim.keymap.set("n", "<leader>c", "<Cmd>BufferClose<CR>", opts)
vim.keymap.set("n", "<leader>C", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
