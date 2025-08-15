return {
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
		"j-hui/fidget.nvim",
		opts = {},
	},
}
