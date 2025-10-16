return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            --local lspconfig = require("lspconfig")
            --lspconfig.clangd.setup {
            --    cmd = {
            --        "clangd",
            --        "--offset-encoding=utf-16",
            --        "--background-index",
            --        "--cross-file-rename"
            --    },
            --}

            --lspconfig.jedi_language_server.setup { }
          vim.lsp.enable("clangd")
          vim.lsp.enable("jedi_language_server")
        end,
        lazy=false,
    },
    {
        "williamboman/mason.nvim",
        opts = {
        },
    },
}
