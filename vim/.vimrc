" -------------- VIM PLUG SETTINGS -----------------
call plug#begin('~/.vim/plugged')
Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()
nmap <C-n> :NERDTreeToggle<CR>

" ----------------- LINE NUMBER SETTINGS ----------
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" --------------- GENERAL SETTINGS -----------------
"Better command-line completion
set wildmenu

"Show partial commands in the last line of the screen
set showcmd

"set highlighting in searching. To temporarily turn it off use <C-L>.
"see mapping of <C-L>
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"Enable use of the mouse for all modes
set mouse=a

"Enable syntax highlighting
syntax on

"Enable true colors
set termguicolors

"Use 256 colors
set t_Co=256

"character encoding
set encoding=utf-8

"show lightline
"set laststatus=2
set shiftwidth=4
set expandtab

"disable edit status
set noshowmode

set nocompatible              " be iMproved, required
filetype plugin indent on    " required

set clipboard=unnamed

inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O
" --------------- COLOR SCHEME SETTINGS ------------
let g:space_vim_dark_background = 235
if exists('$TMUX')
	colorscheme peachpuff
else
	colorscheme space-vim-dark
endif
