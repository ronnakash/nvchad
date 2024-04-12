local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- local configs = require 'lspconfig/configs'

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
  -- cmd = { vim.fn.expand('/home/itzko/.local/share/nvim/mason/packages/jdtls/bin') },
  cmd = { vim.fn.expand('/home/itzko/.local/share/nvim/mason/bin/jdtls') },
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "java" },
  -- root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
  root_dir = lspconfig.util.root_pattern("gradlew", "mvnw", ".git"),
})
