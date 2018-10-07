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
set shiftwidth=2                "When reading, tabs are 4 spaces
set softtabstop=2               "softtabstop==tabstop, noexpandtab > force tabs (expandtab > softtabstop ignored)

set list                        "Show whitespace characters
set listchars=eol:¬,tab:▸·,trail:~,extends:>,precedes:<,space:·

"set nowrap                     "Don't wrap lines
set linebreak                   "Wrap lines at convenient points

" Disabled - wrong copy paste indentation from non vim sources
"set autoindent                  "Autoindent based on line above
"set smartindent                 "Smarter indent for C-like languages

" ================ Search ===========================

set incsearch                   "Find match as we type
set hlsearch                    "Highlight searches by default
set ignorecase                  "Ignore case when searching...
set smartcase                   "...unless we type a capital

" ================ Editing ==========================

set wildmenu                    "Visual autocomplete for command menu
set showmatch                   "Highlight matching [{()}]

" ================ Backup ===========================

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" ================ Swapfile =========================

" Don't create swapfiles in the same folder as the file
"set swapfile
"set dir=~/.vim/tmp               "Set the swapfile dir

" ================ Colors ===========================

set background=dark
colorscheme paramount
hi Comment ctermfg=darkgray
hi Normal ctermfg=white

" ================ Mapping ==========================
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>
