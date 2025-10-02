-- lua/plugins/conform.lua (example)
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
				python = { "ruff", "isort", "black" },
				javascript = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 2500,
				lsp_fallback = true,
			},
		})
	end,
}
