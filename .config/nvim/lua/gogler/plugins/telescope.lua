return {
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
        },
        config = function()
            local telescope = require("telescope")
            local actions = require("telescope.actions")

            telescope.load_extension("fzf")
            local keymap = vim.keymap
            keymap.set("n", '<leader>ff', '<cmd>Telescope find_files<cr>', {})
            keymap.set("n", '<leader>p', '<cmd>Telescope git_files<cr>', {})
            keymap.set("n", '<leader>b', '<cmd>Telescope buffers<cr>', {})
            keymap.set("n", '<leader>fs', '<cmd>Telescope live_grep<cr>', {})
        end
    },
--    {
--        "nvim-telescope/telescope-ui-select.nvim",
--        config = function()
--            require("telescope").setup {
--                extensions = {
--                    ["ui-select"] = {
--                        require("telescope.themes").get_dropdown {
--                        }
--                    }
--                }
--            }
--            -- To get ui-select loaded and working with telescope, you need to call
--            -- load_extension, somewhere after setup function:
--            require("telescope").load_extension("ui-select")
--        end,
--    },
}
