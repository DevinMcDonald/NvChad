local base = require("plugins.configs.lspconfig")
local lsp_format_modifications = require "lsp-format-modifications"

local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    lsp_format_modifications.attach(client, bufnr)
    on_attach(client, bufnr)
  end,
}
