return {
    {
        "tinted-theming/tinted-vim",
        config = function()
            local cmd = vim.cmd
            local g = vim.g
            g.tinted_colorspace = 256
            cmd.colorscheme('base16-google-light')
        end
    }
}
