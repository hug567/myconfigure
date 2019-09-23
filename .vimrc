syntax on
"-----------------------------------------------"
set nocompatible
filetype off
" Runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on
"-----------------------------------------------"

" Chose color scheme
colorscheme molokai
" Display line number
set number
" Diaplay tab
set list
" Set tab style and display tail space
set listchars=tab:>-,trail:-
" Highlight during search
set hlsearch
" Char-by-char highlight during search
set incsearch
" Enable mouse
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
" Allow curser cross line boundry
"set whichwrap+=<,>,h,l

" Set background color
hi Normal ctermbg=NONE
hi LineNr ctermbg=NONE
hi Visual ctermbg=238
"hi Cursor ctermbg=208
set cursorline
hi CursorLine ctermbg=237
hi MatchParen ctermfg=208 ctermbg=240
let &colorcolumn="80"
hi ColorColumn ctermbg=237

" Customize shortcut keys
map <F9> :NERDTree<CR>
set backspace=indent,eol,start

let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联
"Taglist窗口显示在右侧
let Tlist_Use_Right_Window =1
"设置taglist窗口大小
let Tlist_WinWidth = 40
map <F6> :TlistOpen<CR>
map <F7> :TlistClose<CR>

" Highliht blank char at the end of the line
hi ExtraWhitespace ctermbg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
