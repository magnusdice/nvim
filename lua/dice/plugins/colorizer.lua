return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			"css",
			"javascript",
			html = {
				mode = "foreground",
			},
			css = { rgb_fn = true },
		})
	end,
}
