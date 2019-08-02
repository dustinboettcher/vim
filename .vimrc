" ================ General Config ====================

set nocompatible                " No backwardcompatibility with VI
set number                      " Line numbers are good
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
syntax on                       " Turn on syntax highlighting
set modelines=0                 " CVE-2007-2438
set ttyfast                     " Fast rendering

" ================ File handling ====================

set encoding=utf-8              " Encoding
set fileencoding=utf-8          " Encoding
set fileformat=unix             " File format
set fileformats=unix,dos        " File format

au BufReadPost *.tpl set syntax=html  " Set syntax for special filetypes

" ================ Indentation ======================

set expandtab                   " Use spaces instead of tabs
set shiftwidth=2                " When reading, tabs are 4 spaces
set softtabstop=2               " softtabstop==tabstop, noexpandtab > force tabs (expandtab > softtabstop ignored)

set list                        " Show whitespace characters
set listchars=eol:¬,tab:▸·,trail:~,extends:>,precedes:<,space:·

"set nowrap                     " Don't wrap lines
set linebreak                   " Wrap lines at convenient points

" Disabled - wrong copy paste indentation from non vim sources
"set autoindent                 " Autoindent based on line above
"set smartindent                " Smarter indent for C-like languages

" ================ Search ===========================

set incsearch                   " Find match as we type
set hlsearch                    " Highlight searches by default
set ignorecase                  " Ignore case when searching...
set smartcase                   " ..unless we type a capital

" ================ Editing ==========================

set wildmenu                    " Visual autocomplete for command menu
set showmatch                   " Highlight matching [{()}]

" ================ NETRW ===========================

let g:netrw_winsize = -28              " Absolute width of netrw window
let g:netrw_banner = 0                 " Do not display info
let g:netrw_liststyle = 3              " Tree-view
let g:netrw_sort_sequence = '[\/]$,*'  " Sort is affecting only: directories on the top, files below
let g:netrw_browse_split = 4           " Use the previous window to open file
let g:netrw_altv = 1                   " New window and cursor at the right

" ================ Backup ===========================

au BufWrite /private/tmp/crontab.* set nowritebackup nobackup  " Don't write backup file if vim is being called by 'crontab -e'
au BufWrite /private/etc/pw.* set nowritebackup nobackup       " Don't write backup file if vim is being called by 'chpass'

" ================ Swapfile =========================

"set swapfile                   " Don't create swapfiles in the same folder as the file
"set dir=~/.vim/tmp             " Set the swapfile dir

" ================ Colors ===========================

set t_Co=256
set background=dark
colorscheme paramount
hi Comment ctermfg=darkgray
hi Normal ctermfg=white

" ================ Mapping ==========================

let mapleader = "<"
nnoremap <leader><Left> :tabprevious<CR>
nnoremap <leader><Right> :tabnext<CR>
nnoremap <leader><Up> :Vexplore<CR>

" ================ Network ==========================

let g:netrw_ftp_cmd="ftp -p"    " Use passive mode in ftp connections
