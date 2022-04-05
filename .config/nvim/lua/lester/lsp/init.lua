local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "lester.lsp.lsp-installer"
require("lester.lsp.handlers").setup()
