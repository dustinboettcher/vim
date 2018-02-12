INSTALL
curl https://raw.githubusercontent.com/dustinboettcher/vim/master/.vimrc -O
curl https://raw.githubusercontent.com/dustinboettcher/vim/master/paramount.vim --create-dirs -o .vim/colors/paramount.vim

IN NORMAL MODE
gg		- top
G		- bottom
7gg		- go to line 7
H		- screen top
M		- screen middle
L		- screen bottom
j		- line up
k		- line down
zt		- align top screen
zz		- align center screen
bt		- align bottom screen
/one		- search for “one”
n		- next item
N		- previous item
noh		- clear searchsyntax

ctrl y	- move screen one up
ctrl e	- move screen one down
7 ctrl y	- move screen 7 up (same for e)
ctrl u	- half a screen up
ctrl d	- half a screen down
ctrl b	- fullscreen up
ctrl f		- fullscreen down	

u		- undo
ctrl r		- redo

%retab!	- reformat (e.g. from 8 tab to 4 space “:set tabstop=4 | %retab!”)

IN INSERT MODE
ctrl d	- shift left
ctrl t		- shift right
