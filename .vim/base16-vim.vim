"------------------------------------------------------------------------------
" General settings
"------------------------------------------------------------------------------
if exists('$BASE16_THEME')
            \ && (!exists('g:colors_name') 
            \ || g:colors_name != 'base16-$BASE16_THEME')
    let base16colorspace=256
    colorscheme base16-$BASE16_THEME
endif

if filereadable(expand("$HOME/.config/tinted-theming/set_theme.vim"))
    let base16colorspace=256
    source $HOME/.config/tinted-theming/set_theme.vim
endif
"------------------------------------------------------------------------------
