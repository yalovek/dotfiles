set nocompatible " Use Vim improvements
scriptencoding utf-8 " Encoding of script

filetype off " Disable file type detection

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " Let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'spf13/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()

if !isdirectory(expand('~/.vim/backup'))
  silent !mkdir ~/.vim/backup
endif

if !isdirectory(expand('~/.vim/swap'))
  silent !mkdir ~/.vim/swap
endif

let mapleader = ','

filetype plugin indent on " Automatically detect file types
syntax on " Syntax highlighting

if has('clipboard')
  if has('unnamedplus') " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set backupdir=~/.vim/backup
set directory=~/.vim/swap
set backup " Backups
set number " Line numbers
set cursorline " Highlight current line
set showmode " Show current mode down the bottom
set showcmd " Show partial commands in status line and selected characters/lines in visual mode
set backspace=indent,eol,start " Make backspace work like most other apps
set showmatch " Show matching brackets/parenthesis
set incsearch " Find as you type search
set hlsearch " Highlight search terms
set autoindent " Indent at the same level of the previous line
set smartindent
set smarttab
set shiftwidth=2 " Use indents of 2 spaces
set softtabstop=2 " Let backspace delete indent
set tabstop=2 " An indentation every 2 columns
set linespace=0 " No extra spaces between rows
set expandtab " Tabs are spaces, not tabs
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set background=dark

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

if isdirectory(expand('~/.vim/bundle/vim-colors-solarized'))
  let g:solarized_termcolors=256

  colorscheme solarized
endif

if isdirectory(expand('~/.vim/bundle/nerdtree'))
  map <C-e> :NERDTreeToggle<CR>

  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=1
endif
