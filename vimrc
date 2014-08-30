set nocompatible
"" BUNDLES
" Configuration
let $GIT_SSL_NO_VERIFY = 'true'
if has("win32")
    set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim
else
    set shell=/bin/bash
    set rtp+=~/.vim/bundle/Vundle.vim/
endif
set laststatus=2 "for Powerline
let g:airline_powerline_fonts = 1
nmap <Leader>rt :TagbarToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
call vundle#begin()
" Must have
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-repeat'
Plugin 'a.vim'
" Functional
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'xolox/vim-easytags'
" Visual
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'noahfrederick/vim-noctu'
" Language
Plugin 'marijnh/tern_for_vim'
" Other
"Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'

call vundle#end()
" Enable file type detection and do language-dependent indenting
filetype plugin indent on

set backspace=indent,eol,start
syntax on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

set lines=50 columns=140

set nowrap
set guioptions+=b

set autochdir

"" KEYMAPS
" Use j and k for <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

nmap <F8> :TagbarToggle<CR>
""

"" VISUAL
if (has("win32") && !has('gui_running'))
    set t_Co=16
    colorscheme noctu
    colorscheme default
else
    set background=dark
    colorscheme solarized
    set guifont=Inconsolata_for_Powerline:h11
    "set guifont=Sauce_Code_Powerline:h10
endif
""

" Keep cursor away from edges of screen
set so=5

"Highlight cursor line
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"    au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
    au WinLeave * setlocal nocursorline
"    au WinLeave * setlocal nocursorcolumn
augroup END

" Make trailing whitespace annoyingly highlighted.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Tab Settings
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set cindent
let indent_guides_enable_on_vim_startup = 1

if has("mouse")
    set mouse=a
    noremap <MiddleMouse> <LeftMouse>
endif



