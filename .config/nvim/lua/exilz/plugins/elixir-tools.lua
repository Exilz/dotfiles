return {
	"elixir-tools/elixir-tools.nvim",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local elixir = require("elixir")

		elixir.setup({
			nextls = { enable = false },
			credo = { enable = false },
			elixirls = {
				enable = true,
				on_attach = function(client, bufnr)
					local opts = { noremap = true, silent = true }
					opts.buffer = bufnr

					vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })

					-- Rebind go to definition, reference & implementation beacuse Telescope
					-- isn't able to find them for some reason (elixir only)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				end,
			},
		})
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
