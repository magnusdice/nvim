return {
	--  i guess this fix the issue with ale.util not found lmao
	{
		"dense-analysis/ale",
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"css",
				"javascript",
				html = {
					mode = "foreground",
				},
				css = { rgb_fn = true },
			})
		end,
	},
	{
		"mbbill/undotree",
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle),
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
}
