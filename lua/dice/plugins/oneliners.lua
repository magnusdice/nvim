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
		enabled = false,
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle),
	},
}
