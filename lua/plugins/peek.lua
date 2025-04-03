-- TODO: make this thing work, idk why this thing dont work
-- Had to disable this
-- FIXME: idk how to make this shit works
--
return {
	{
		"toppair/peek.nvim",
		enabled = false,
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			require("peek").setup({
				filetype = { "markdown", "conf" },
			})
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
		end,
	},
}
