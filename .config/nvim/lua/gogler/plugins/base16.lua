return {
    {
        "tinted-theming/base16-vim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("base16-catppuccin-latte")
        end
    }
}
