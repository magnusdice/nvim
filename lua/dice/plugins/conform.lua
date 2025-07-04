return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "prettierd" },
				php = { "easy-coding-standard" },
				sql = { "sql-formatter" },
				html = { "prettier" },
				python = { "isort", "black" },
				javascript = { "prettierd", stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
