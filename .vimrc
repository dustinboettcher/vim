" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set nocompatible                "No backwardcompatibility with VI
"set cursorline                  "Highlight current line

syntax on                       "Turn on syntax highlighting
colorscheme blue                "Set the color ~/.vim/colors/

" ================ File handling ====================

" encoding
set encoding=utf-8
set fileencoding=utf-8

" file format
set fileformat=unix
set fileformats=unix,dos

filetype indent on              "Load filetype-specific indent ~/.vim/indent/

" ================ Indentation ======================

set expandtab                   "Use spaces instead of tabs
set autoindent                  "Autoindent based on line above
set smartindent                 "Smarter indent for C-like languages
set shiftwidth=2                "When reading, tabs are 2 spaces
set softtabstop=2               "In insert mode, tabs are 2 spaces

set list                        "Show whitespace characters
set listchars=eol:$,trail:~     "Specify characters

set nowrap                      "Don't wrap lines
set linebreak                   "Wrap lines at convenient points

" ================ Search ===========================

set incsearch                   "Find the next match as we type the search
set hlsearch                    "Highlight searches by default
set ignorecase                  "Ignore case when searching...
set smartcase                   " ...unless we type a capital

" ================ Editing ==========================
set wildmenu                    "Visual autocomplete for command menu
set showmatch                   "Highlight matching [{()}]
