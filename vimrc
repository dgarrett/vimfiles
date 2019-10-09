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
Plugin 'arcticstudio/nord-vim'

call vundle#end()
" Enable file type detection and do language-dependent indenting
filetype plugin indent on
set showcmd

set backspace=indent,eol,start
syntax on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

if (has('gui_running'))
    set lines=50 columns=140
endif

set nowrap
set guioptions+=b

set autochdir

set encoding=utf-8

set tags+=./tags;
set regexpengine=1
let g:easytags_auto_highlight = 1

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" KEYMAPS
" Use j and k for <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <Esc> :noh<Return><Esc>

nmap <F8> :TagbarToggle<CR>
""

"" Filetypes
au BufRead,BufNewFile *.man set filetype=xml

"" VISUAL
if (has("win32") && !has('gui_running'))
    set t_Co=16
    colorscheme noctu
    colorscheme default
else
    set background=dark
    colorscheme nord
    if has("win32")
        set guifont=Inconsolata_for_Powerline:h11
    else
        set guifont=Fira\ Code\ 11
    endif
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

let g:easytags_async = 1
if has("win32")
    let g:easytags_cmd = 'C:\Users\dylang\Documents\bin\ctags.exe'

    let g:tagbar_ctags_bin = 'C:\Users\dylang\Documents\bin\ctags.exe'
endif

if has("mouse")
    set mouse=a
    noremap <MiddleMouse> <LeftMouse>
endif

" Use system clipboard by default
set clipboard=unnamedplus


