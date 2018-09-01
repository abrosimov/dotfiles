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
set ai " включаем автоотступ
set expandtab " вместо табов ставим пробелы
set softtabstop=4 " один таб == 2 пробела
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
set nu

imap {<CR> {<CR>}<Esc>O

set showmatch
set history=1000
set undolevels=500

set nowrap

syntax on
"set background="dark"
colorscheme solarized8
