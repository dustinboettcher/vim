" ================ General Config ====================

set nocompatible                "No backwardcompatibility with VI
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
syntax on                       "Turn on syntax highlighting
set modelines=0                 "CVE-2007-2438
set ttyfast                     "Fast rendering

" ================ File handling ====================

"Encoding
set encoding=utf-8
set fileencoding=utf-8

"File format
set fileformat=unix
set fileformats=unix,dos

"Set syntax for special filetypes
au BufReadPost *.tpl set syntax=html

" ================ Indentation ======================

set expandtab                   "Use spaces instead of tabs
set autoindent                  "Autoindent based on line above
set smartindent                 "Smarter indent for C-like languages
set shiftwidth=4                "When reading, tabs are 4 spaces
set softtabstop=4               "softtabstop==tabstop, noexpandtab > force tabs (expandtab > softtabstop ignored)

set list                        "Show whitespace characters
set listchars=eol:¬,tab:▸·,trail:~,extends:>,precedes:<,space:·

"set nowrap                     "Don't wrap lines
set linebreak                   "Wrap lines at convenient points

" ================ Search ===========================

set incsearch                   "Find match as we type
set hlsearch                    "Highlight searches by default
set ignorecase                  "Ignore case when searching...
set smartcase                   "...unless we type a capital

" ================ Editing ==========================
set wildmenu                    "Visual autocomplete for command menu
set showmatch                   "Highlight matching [{()}]

" ================ Backup ===========================
set swapfile
set dir=~/vimswp

" ================ Colors ===========================

set background=dark
colorscheme paramount
hi Comment ctermfg=darkgray
hi Normal ctermfg=white

" ================ FileTree ===========================
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" ================ Mapping ==========================
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>
