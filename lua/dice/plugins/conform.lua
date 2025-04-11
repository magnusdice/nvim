-- TODO: need to find a way to format php with html embed and js
return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "prettierd" },
				php = { "phpcbf" },
				sql = { "sql-formatter" },
				html = { "prettier" },
				gd = { "gdtoolkit" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettierd", stop_after_first = true },
			},
			-- formatters = {
			-- 	prettier = {
			-- 		command = "/usr/local/bin/prettier", -- e.g., /home/dice/.nvm/versions/node/v18.16.0/bin/prettier
			-- 		args = {
			-- 			"--stdin-filepath",
			-- 			"$FILENAME",
			-- 			"--plugin=@prettier/plugin-php",
			-- 			"--parser=php",
			-- 		},
			-- 		stdin = true,
			-- 	},
			-- },
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
