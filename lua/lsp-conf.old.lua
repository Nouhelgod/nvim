require("mason").setup()
require("venv-snapper")

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" },
})

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.selene,
  },
})

-- local lspconfig = require("lspconfig")
-- lspconfig.lua_ls.setup({})
-- lspconfig.pyright.setup({})
-- lspconfig.html.setup({})
-- lspconfig.cssls.setup({})
-- lspconfig.jinja_lsp.setup({})
-- lspconfig.dockerls.setup({})

local troubles = require("trouble")
troubles.setup()

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  settings = {
    python = {
      -- pythonPath = get_python_path(),
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      }
    }
  }
})

