return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
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
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Command to toggle inline diagnostics
            vim.api.nvim_create_user_command("DiagnosticsToggleVirtualText", function()
                local current_value = vim.diagnostic.config().virtual_text
                if current_value then
                    vim.diagnostic.config({ virtual_text = false })
                else
                    vim.diagnostic.config({ virtual_text = true })
                end
            end, {})

            -- Command to toggle diagnostics
            vim.api.nvim_create_user_command("DiagnosticsToggle", function()
                local current_value = vim.diagnostic.is_disabled()
                if current_value then
                    vim.diagnostic.enable()
                else
                    vim.diagnostic.disable()
                end
            end, {})
            vim.keymap.set("n", "<leader>gh", "<cmd>DiagnosticsToggle<CR>", {})

            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = {
                    "clangd",
                    "--offset-encoding=utf-16",
                },
                single_file_support = true,
            })
            lspconfig.cmake.setup({
                capabilities = capabilities,
            })
            lspconfig.jedi_language_server.setup({
                capabilities = capabilities,
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })
            lspconfig.typos_lsp.setup({
                capabilities = capabilities,
            })

            lspconfig.hls.setup({
                capabilities = capabilities,
            })

            local opts = {}
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)
            vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<leader>R", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
            vim.keymap.set("n", "<leader>S", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", opts) -- show definition, references
        end,
    },
}
