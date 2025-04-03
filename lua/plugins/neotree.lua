return {
	"nvim-neo-tree/neo-tree.nvim",
	enabled = true,
	branch = "v3.x",
	popup_border_style = "rounded",
	enable_git_status = true,
	enable_diagnostics = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		-- fill any relevant options here
	},
	config = function()
		vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", {})
	end,
}
