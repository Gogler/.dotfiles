return {
    {
        "tinted-theming/base16-vim",
        dependencies = {
            "JoshPorterDev/nvim-base16"
        },
        priority = 1000,
        config = function()
            local cmd = vim.cmd
            local g = vim.g

            g.tinted_colorspace = 256
            cmd.colorscheme('base16-google-light')
        end
    }
}
