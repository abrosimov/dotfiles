if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode'
Plug 'w0rp/ale'
Plug 'lifepillar/vim-solarized8'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/neocomplete.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
call plug#end()

let &t_Co=256
set t_Co=256
set ai
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

set dir=/tmp
set cpt=.,w,b,u,t,i
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8

set ignorecase
set smartcase

set nohlsearch
set incsearch

set nobackup
set noswapfile
set novisualbell
set t_vb=
set nu

imap {<CR> {<CR>}<Esc>O

set showmatch
set history=1000
set undolevels=500

set nowrap

syntax on
colorscheme solarized8

" more humanful PgUp/PgDown
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>

nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

set scrolljump=7
set scrolloff=7

set hidden
set mousehide

" cmdline height
set ch=1
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{strftime(\"%a\ %b\ %d\ -\ %H:%M\")}
set laststatus=2

set autoread
set tw=120

" disable replace mode
map R <Esc>
imap <Ins> <Esc>

" space in normal mode is like PgDown
nmap <Space> <PageDown>

filetype plugin on
filetype indent on
