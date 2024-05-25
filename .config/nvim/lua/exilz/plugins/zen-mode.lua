return {
	"folke/zen-mode.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		alacritty = {
			enabled = true,
			font = "20",
		},
	},
}
