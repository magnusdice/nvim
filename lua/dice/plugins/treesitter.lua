return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"html",
				"php",
			},
			highlight = { enable = true, additional_vim_regex_highlighting = true },
			indent = { enable = true },
			auto_install = true,
		})
	end,
}
