"------------------------------------------------------------------------------
" General settings
"------------------------------------------------------------------------------
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'cpp': ['clang-format', 'remove_trailing_lines', 'trim_whitespace'],
            \   'c': ['clang-format', 'remove_trailing_lines', 'trim_whitespace']
            \ }
let g:ale_linters = {
            \   'cpp': ['clangd', 'cspell'],
            \   'c': ['clangd', 'cspell']
            \}

let g:ale_floating_preview=1
let g:ale_completion_enabled = 1
let g:ale_cpp_clangd_executable="--fallback-style=llvm"
"------------------------------------------------------------------------------
" Key maps
"------------------------------------------------------------------------------
nmap <leader>ak <Plug>(ale_previous_wrap)
nmap <leader>aj <Plug>(ale_next_wrap)
nmap <leader>at <Plug>(ale_toggle)

nmap <leader>ag <Plug>(ale_go_to_definition)
nmap <leader>ai <Plug>(ale_hover)
nmap <leader>ar :ALERename<cr>
nmap <leader>af <Plug>(ale_find_references)
nmap <leader>aF :ALERepeatSelection<cr>

nmap <F8> <Plug>(ale_fix)
"------------------------------------------------------------------------------
