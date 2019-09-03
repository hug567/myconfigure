syntax on

"-----------------------------------------------"
" Runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype off
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
set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
" Allow curser cross line boundry
"set whichwrap+=<,>,h,l

" Set background color
hi Normal ctermbg=NONE
hi LineNr ctermbg=NONE
hi Visual ctermbg=238

" Customize shortcut keys
map <F9> :NERDTree<CR>

" Taglist setting
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联

" Highliht blank char at the end of the line
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

"set termguicolors
"if &term =~# '^screen'
"    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif
