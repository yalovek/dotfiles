set nocompatible " Use Vim improvements
filetype off " disable file type detection

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'spf13/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

if !isdirectory(expand('~/.vim/backup'))
  silent !mkdir ~/.vim/backup
endif

if !isdirectory(expand('~/.vim/swap'))
  silent !mkdir ~/.vim/swap
endif

set backupdir=~/.vim/backup
set directory=~/.vim/swap
set number " Line numbers are good
set showmode " Show current mode down the bottom
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

