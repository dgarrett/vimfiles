"call pathogen#infect()
syntax on
"filetype plugin indent on
color molokai

"let mapleader = ","
set nocompatible
filetype off
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set laststatus=2


Bundle 'gmarik/vundle'

" My bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
" Bundle 'astashov/vim-ruby-debugger'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'vim-scripts/SmartusLine'
Bundle 'vim-scripts/easytags.vim'
Bundle 'vim-scripts/delimitMate.vim'
Bundle 'wincent/Command-T'
Bundle 'ervandew/supertab'


