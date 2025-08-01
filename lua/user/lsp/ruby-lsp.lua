local lspconfig = require('lspconfig')
lspconfig.ruby_lsp.setup {
  filetypes = { "ruby" },
  cmd = { "bundle", "exec", "ruby-lsp" },
  root_markers = { "Gemfile", ".git" },
  init_options = {
    formatter = 'rufo',
    linters = { 'standard' },
    addonSettings = {
      ["Ruby LSP Rails"] = {
        enablePendingMigrationsPrompt = false,
      },
    },
  },
}
