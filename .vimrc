"------------------------------------------------------------------------------
" General settings
"------------------------------------------------------------------------------
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent cindent
set hidden

set hlsearch incsearch ignorecase smartcase nowrap number
set laststatus=2 cmdheight=1 showcmd wildmenu

set scrolloff=8 sidescrolloff=8
set list
set wrap
set mouse=
set nocompatible
"------------------------------------------------------------------------------
" Key maps
"------------------------------------------------------------------------------
let mapleader = " "
map Q <nop>

nmap <leader>ve :edit ~/.vimrc<cr>
nmap <leader>vr :source ~/.vimrc<cr>

nmap <s-l> :tabnext<cr>
nmap <s-h> :tabprevious<cr>

nmap <leader>h :nohls<cr>
nmap <leader>Q :bufdo bdelete<cr>

map gf :edit <cfile><cr>

vmap <leader>cy "+y
nmap <leader>cp "+p

cmap w!! w !sudo tee > /dev/null %
command! CLEAN retab | %s/ \+$//
"------------------------------------------------------------------------------
" Plugins
"------------------------------------------------------------------------------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/chriskempson/base16-vim'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/dense-analysis/ale'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

source ~/.vim/base16-vim.vim
source ~/.vim/ale.vim
source ~/.vim/nerdtree.vim
source ~/.vim/vim-airline.vim
source ~/.vim/fzf.vim
"------------------------------------------------------------------------------
