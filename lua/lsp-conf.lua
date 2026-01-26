require("mason").setup()
require("lsp-conform")

vim.lsp.config("*", {
	root_markers = { ".git" },
})

-- LUA
vim.lsp.enable("stylua")

-- Python
vim.lsp.enable("ty")

-- JavaScript
vim.lsp.enable("biome")

-- HTML
vim.lsp.enable("html-lsp")
vim.lsp.config("html-lsp", {
	-- TODO: There must be .jinja extension trigger
})

vim.lsp.enable("jinja-lsp")
vim.lsp.config("jinja-lsp", {})

-- Dockerfile
vim.lsp.enable("dockerfile-language-server")
vim.lsp.config("dockerfile-language-server", {})
