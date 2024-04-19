local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local configs = require 'lspconfig/configs'

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
})

lspconfig.jdtls.setup({
  cmd = { vim.fn.expand('/home/itzko/.local/share/nvim/mason/bin/jdtls') },
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "java" },
  root_dir = lspconfig.util.root_pattern("gradlew", "mvnw", ".git"),
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  },
  root_dir = lspconfig.util.root_pattern(".git"),
})

if not configs.golangcilsp then
 	configs.golangcilsp = {
		default_config = {
			cmd = {'golangci-lint-langserver'},
			init_options = {
					command = { "golangci-lint", "run", "--enable-all", "--disable", "lll", "--out-format", "json", "--issues-exit-code=1" };
			}
		};
	}
end

lspconfig.golangci_lint_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {'golangci-lint-langserver'},
	filetypes = {'go','gomod'},
  root_dir = lspconfig.util.root_pattern('go.mod'),
}

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  -- cmd = {'golangci-lint-langserver'},
	filetypes = {'html'},
  root_dir = lspconfig.util.root_pattern('.git'),
}
