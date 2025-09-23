-- one day i might regret naming this to deeznuts
return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			local npairs = require("nvim-autopairs")
			npairs.setup({})
		end,
		opts = {},
	},
	{
		"Wansmer/treesj",
		keys = { "<leader>m", "<leader>j", "<leader>s" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		}, -- if you install parsers with `nvim-treesitter`
		config = function()
			require("treesj").setup({ --[[ your config ]]
			})
		end,
	},
}
