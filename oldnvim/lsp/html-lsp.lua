----Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}


--local lsp_config = require("lspconfig")
--local lsp_completion = require("completion")

----Enable completion
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

--local general_on_attach = function(client, bufnr)
--  if client.resolved_capabilities.completion then
--    lsp_completion.on_attach(client, bufnr)
--  end
--end

---- Setup basic lsp servers
--for _, server in pairs({"html"}) do
--  lsp_config[server].setup {
--    -- Add capabilities
--    capabilities = capabilities,
--    on_attach = general_on_attach
--  }
--end

