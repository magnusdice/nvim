vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.breakindent = true
vim.opt.smartindent = true

vim.opt.scrolloff = 10
vim.opt.cursorline = true
-- nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert 1" }) -- exit insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert 2" }) -- exit insert mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moving selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moving selection up" })

--jumping stuff
vim.keymap.set("n", "<C-D>", "<C-d>zz", { desc = "Jump D" })
vim.keymap.set("n", "<C-U>", "<C-u>zz", { desc = "Jump U" })
vim.keymap.set("n", "<C-d>", "10jzz", { desc = "Jump 10 D" })
vim.keymap.set("n", "<C-u>", "10kzz", { desc = "Jump 10 U" })

-- split
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

--moving between todos
vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- wrapping function
function ToggleWrap()
	local wrap = vim.wo.wrap
	vim.wo.wrap = not wrap
end
vim.keymap.set("n", "<leader>ww", ToggleWrap)

--copy to clipboard
vim.keymap.set({ "n", "x" }, "cp", '"+y')
vim.keymap.set({ "n", "x" }, "cv", '"+p')
