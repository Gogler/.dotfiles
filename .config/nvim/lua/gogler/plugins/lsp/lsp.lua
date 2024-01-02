return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "cmake",
                    "jedi_language_server",
                    "bashls",
                    "typos_lsp",
                },
                automatic_installation = true,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.clangd .setup({})
            lspconfig.cmake .setup({})
            lspconfig.jedi_language_server.setup({})
            lspconfig.bashls .setup({})
            lspconfig.typos_lsp.setup({})


            local opts = {}
            vim.keymap.set('n', "K", vim.lsp.buf.hover, opts)
            vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        end
    }
}
