"------------------------------------------------------------------------------
" General settings
"------------------------------------------------------------------------------
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ }
"------------------------------------------------------------------------------
" Key maps
"------------------------------------------------------------------------------
nmap <leader>k <Plug>(ale_previous_wrap)
nmap <leader>j <Plug>(ale_next_wrap)
nmap <leader>t <Plug>(ale_toggle)

nmap <leader>g <Plug>(ale_go_to_definition)
nmap <leader>i <Plug>(ale_hover)
nmap <leader>r :ALERename<cr>
nmap <leader>f <Plug>(ale_find_references)

nmap <F8> <Plug>(ale_fix)
"------------------------------------------------------------------------------
