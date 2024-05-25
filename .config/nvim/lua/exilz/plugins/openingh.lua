return {
	{
		"almo7aya/openingh.nvim",
		opts = {},
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local keymap = vim.keymap

			keymap.set("n", "<leader>gh", "<cmd>OpenInGHFile<cr>", { desc = "Open current file in GitHub" })
		end,
	},
}
