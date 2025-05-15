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
	},
}
