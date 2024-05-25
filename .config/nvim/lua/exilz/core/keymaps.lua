-- space is the leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- Splits
keymap.set("n", "<leader>-", "<cmd>split<CR>", { desc = "Horizontal split" })
keymap.set("n", "<leader>|", "<cmd>vsplit<CR>", { desc = "Vertical split" })

-- Buffers
keymap.set("n", "<leader>c", "<cmd>:bd | :bprevious<CR>", { desc = "Close buffer" })
keymap.set("n", "<leader>bC", "<cmd>:bufdo bd | :lua require('alpha').start()<CR>", { desc = "Close all buffers" })
