return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                theme = 'onelight',
                section_separators = '', component_separators = '',
                extensions = {'fzf', 'fugative', 'lazy', 'neo-tree', 'quickfix'}
            },
        }
    end
}
