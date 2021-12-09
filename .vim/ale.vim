"------------------------------------------------------------------------------
" General settings
"------------------------------------------------------------------------------
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'cpp': ['clang-format'],
            \ }
"------------------------------------------------------------------------------
" Key maps
"------------------------------------------------------------------------------
nmap <leader>g <Plug>(ale_go_to_definition)
nmap <leader>i <Plug>(ale_hover)
nmap <leader>r :ALERename<cr>
nmap <leader>f <Plug>(ale_find_references)

nmap <F8> <Plug>(ale_fix)
"------------------------------------------------------------------------------
