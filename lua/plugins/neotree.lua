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
	},
	window = {
		position = "left",
		width = 140,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false, -- show files starting with a dot
				hide_gitignored = false,
				hide_hidden = true, -- only works on Windows for hidden files/directories
			},
		},
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
