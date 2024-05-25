return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			vim.keymap.set("n", "<leader>gg", function()
				local Terminal = require("toggleterm.terminal").Terminal
				local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
				lazygit:toggle()
			end, { desc = "Toggle lazygit" })
		end,
	},
}
