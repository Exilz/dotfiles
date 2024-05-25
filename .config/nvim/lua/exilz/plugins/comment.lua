return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- import comment plugin safely
		local comment = require("Comment")

		require("ts_context_commentstring").setup({
			enable = true,
			enable_autocmd = false,
		})

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		-- enable comment
		comment.setup({
			-- for commenting tsx and jsx files
			pre_hook = ts_context_commentstring.create_pre_hook(),
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>/", function()
			return require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
		end, { desc = "Toggle comment for line" })
		keymap.set(
			"v",
			"<leader>/",
			"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
			{ desc = "Toggle comment for selection" }
		)
	end,
}
