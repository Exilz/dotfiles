-- edge.js has no neovim support so let's use hbs instead
vim.filetype.add({ extension = { edge = "handlebars" } })

-- .http extension are http files (useful for kulala client)
vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})
