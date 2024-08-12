vim.keymap.set("n", "<leader>bz", "<cmd>ZenMode<cr>", { desc = "Toggle Zen mode for the buffer" })

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
