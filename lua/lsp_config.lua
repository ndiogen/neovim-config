return { setup = function()
    local lspconfig = require('lspconfig');
    lspconfig.clangd.setup({
        cmd = { "clangd", "--background-index", " --compile-commands-dir='build'" };
        log_level = vim.lsp.protocol.MessageType.Debug;
    });
end }
