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
  filetypes = { "go", "gomod", "gowork" },
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
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
	filetypes = {'html'},
  root_dir = lspconfig.util.root_pattern('.git'),
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
	filetypes = {'python'},
  root_dir = lspconfig.util.root_pattern('.git'),
})
