local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})

vim.lsp.enable("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})
vim.lsp.enable("pyright")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('clangd', {
    cmd = { "clangd",
            "--path-mappings="..
              "/projects=/projects,"
    },
    filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp", "hip", "cuda" },
    capabilities = capabilities,
})
vim.lsp.enable('clangd')

vim.lsp.enable("bashls", {
    cmd = { "bash-language-server", "start" },
    filetypes = { "sh", "bash" }
})
vim.lsp.enable("dockerls")
vim.lsp.enable("ruby-lsp")

require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require "user.lsp.typescript-tools"
require "user.lsp.ruby-lsp"
