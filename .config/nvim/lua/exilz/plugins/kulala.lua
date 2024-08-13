return {
	"mistweaverco/kulala.nvim",
	-- Lazy load when opening http files
	event = "BufRead */*.http",
	config = function()
		-- Setup is required, even if you don't pass any options
		require("kulala").setup()

		local keymap = vim.keymap

		keymap.set("n", "<CR>", ":lua require('kulala').run()<CR>", { noremap = true, silent = true })
		keymap.set("n", "t", ":lua require('kulala').toggle_view()<CR>", { noremap = true, silent = true })
	end,
}
