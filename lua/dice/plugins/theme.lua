return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		enabled = false,
		priority = 1000,
		config = function()
			--require("catppuccin").setup()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"vague2k/vague.nvim",
		enabled = true,
		name = "vague",
		priority = 1000,
		config = function()
			-- NOTE: you do not need to call setup if you don't want to.
			require("vague").setup({
				transparent = true,
				style = {
					-- "none" is the same thing as default. But "italic" and "bold" are also valid options
					-- boolean = "none",
					-- number = "none",
					-- float = "none",
					-- error = "bold",
					-- comments = "italic",
					-- conditionals = "none",
					-- functions = "none",
					-- headings = "none",
					-- operators = "none",
					-- strings = "none",
					-- variables = "none",
					--
					-- -- keywords
					-- keywords = "none",
					-- keyword_return = "none",
					-- keywords_loop = "none",
					-- keywords_label = "none",
					-- keywords_exception = "none",
					--
					-- -- builtin
					-- builtin_constants = "none",
					-- builtin_functions = "none",
					-- builtin_types = "none",
					-- builtin_variables = "none",
				},
				-- optional configuration here
			})
			vim.cmd.colorscheme("vague")
		end,
	},
	{
		"rose-pine/neovim",
		enabled = false,
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
