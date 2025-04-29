return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		keywords = {
			-- //custom keyword that i will use
			LOW = {
				color = "hint",
			},
			MID = {
				color = "warning",
			},
			HIGH = {
				color = "error",
			},
		},
		-- your configuration comes here
		--
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
