return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    keys = {
        {
            '<leader>p', '<cmd>:FzfLua git_files<CR>',
        },
        {
            '<leader>ff', ":lua require('fzf-lua').files()<CR>",
        },
        {
            '<leader>fg', '<cmd>:FzfLua live_grep<CR>',
        },
        {
            '<leader>fb', '<cmd>:FzfLua buffers<CR>',
        },
    },
    config = function()
        local fzf = require('fzf-lua')
        fzf.register_ui_select()
    end,
}
