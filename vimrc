set shell=/bin/bash
"call pathogen#infect()
syntax on
"filetype plugin indent on
"color molokai
"set t_Co=256
set background=dark
if !has('gui_running')
    " Compatibility for Terminal
    "let g:solarized_termtrans=1
    " Make Solarized use 16 colors for Terminal support
    "let g:solarized_termcolors=256
endif
colorscheme solarized
set guifont=Sauce_Code_Powerline:h14

"let mapleader = ","
set nocompatible
filetype off
filetype plugin indent on
set encoding=utf-8
if has("win32")
    set rtp+=%USERPROFILE%/vimfiles/bundle/vundle
"    set guifont=Inconsolata_for_Powerline:h12:cANSI
    set guifont=Consolas_for_Powerline_FixedD:h10.5
    set columns=140
    set lines=35
    set autoread

else
    set rtp+=~/.vim/bundle/vundle/
endif

if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

call vundle#rc()
set laststatus=2
let g:notes_directories = ['~/Dropbox/vimnotes']
let g:SuperTabDefaultCompletionType = "context"
let g:easytags_include_members = 1
set tags=~/.vimtags
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set backspace=indent,eol,start
set number

" Tab Settings
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set cindent
" let indent_guides_enable_on_vim_startup = 1

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

" Control character highlighting
set list listchars=tab:⇥⇥
",eol:↵


" Make trailing whitespace annoyingly highlighted.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


let g:airline_powerline_fonts = 1

let os = substitute(system('uname'), "\n", "", "")
if os == "Darwin"
    let g:Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif

if has("mouse")
    set mouse=a
    noremap <MiddleMouse> <LeftMouse>
endif

"let g:Powerline_symbols = 'fancy'
let $GIT_SSL_NO_VERIFY = 'true'
set wildignore+=*.o,*.obj,.git,tmp

let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1

nnoremap - :Switch<cr>

" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

let g:calendar_google_calendar = 1

Bundle 'gmarik/vundle'

" My bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
" Bundle 'astashov/vim-ruby-debugger'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'vim-scripts/IndexedSearch'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/ruby-matchit'
" Bundle 'vim-scripts/SmartusLine'
"Bundle 'vim-scripts/easytags.vim'
Bundle 'vim-scripts/delimitMate.vim'
" Bundle 'wincent/Command-T'
Bundle 'ervandew/supertab'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/a.vim'
Bundle 'sickill/vim-pasta'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'instant-markdown'
Bundle 'matchit.zip'
Bundle 'ap/vim-css-color'
Bundle 'colorizer'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-unimpaired'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'PeterRincker/vim-argumentative'
Bundle 'AndrewRadev/switch.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/tabman.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'lukerandall/haskellmode-vim'
" Bundle 'Twinside/vim-haskellFold'
" Bundle 'itchyny/calendar.vim'
Bundle 'edkolev/tmuxline.vim'

