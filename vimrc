"call pathogen#infect()
syntax on
"filetype plugin indent on
color molokai

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'


filetype plugin indent on


