return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 35,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
			modified = {
				enable = true,
			},
			diagnostics = {
				enable = true,
			},
		})
	end,

	vim.keymap.set("n", "<C-b>", vim.cmd.NvimTreeToggle),
	vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }),
}
