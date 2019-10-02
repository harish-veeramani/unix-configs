" -------------- LOAD .VIMRC ---------------
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" ------------- VIM PLUG ------------------

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

let g:deoplete#enable_at_startup = 1

call plug#end()

" ---------------- DEOPLETE --------------------
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>" 
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"set laststatus=1

"enable italics in comments"
"hi Comment cterm=italic
"if exists('$TMUX')
"	colorscheme peachpuff
"endif
