require("mason").setup()
require("lsp-conform")


vim.lsp.config("*", {
	root_markers = { ".git" },
})

-- LUA
vim.lsp.enable("stylua")

-- Python
vim.lsp.enable("ty")
-- vim.lsp.enable("pylint")
-- vim.lsp.config("pylint", {})
-- vim.lsp.config("black", {})
-- vim.lsp.enable("black")

-- JavaScript
vim.lsp.enable("biome")

-- HTML
vim.lsp.enable("html-lsp")
vim.lsp.config("html-lsp", {})

vim.lsp.enable("jinja-lsp")
vim.lsp.config("jinja-lsp", {})

-- Dockerfile
vim.lsp.enable("dockerfile-language-server")
vim.lsp.config("dockerfile-language-server", {})
