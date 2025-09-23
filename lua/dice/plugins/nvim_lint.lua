return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("lint").linters_by_ft = {
			markdown = { "vale" },
			php = { "phpstan" },
			sql = { "sqlfluff" },
			javascript = { "quick-lint-js" },
		}
	end,
}
