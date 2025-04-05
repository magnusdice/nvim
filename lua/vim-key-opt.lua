vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=2")

-- keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader><Tab>", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("i", "<C-c>", "<Esc>")
