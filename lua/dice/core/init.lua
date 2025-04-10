vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

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

vim.keymap.set("i", "<C-c>", "<Esc>") -- exit insert mode
vim.keymap.set("i", "jj", "<Esc>") -- exit insert mode

-- moving selections in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--jumping stuff
vim.keymap.set("n", "<C-D>", "<C-d>zz")
vim.keymap.set("n", "<C-U>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "10jzz")
vim.keymap.set("n", "<C-u>", "10kzz")

-- wrapping function
function ToggleWrap()
	local wrap = vim.wo.wrap
	vim.wo.wrap = not wrap
end
vim.keymap.set("n", "<leader>ww", ToggleWrap)

--copy to clipboard
vim.keymap.set({ "n", "x" }, "cp", '"+y')
vim.keymap.set({ "n", "x" }, "cv", '"+p')
