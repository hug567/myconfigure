syntax on
"-----------------------------------------------"
" Vundle插件配置
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

" 设置配色主题
colorscheme molokai
" 显示行号
set number
" 显示tab
set list
" 设置tab显示格式
set listchars=tab:>-,trail:-
" 搜索过程中高亮
set hlsearch
" 逐个字符高亮
set incsearch
" 开启鼠标功能
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
" 允许光标跨行
"set whichwrap+=<,>,h,l

" 自定义主题配置
hi Normal ctermbg=NONE
hi LineNr ctermbg=NONE
hi Visual ctermbg=238
"hi Cursor ctermbg=208
set cursorline
hi CursorLine ctermbg=237
hi MatchParen ctermfg=208 ctermbg=240
let &colorcolumn="80"
hi ColorColumn ctermbg=237

" 打开NERDTree快捷键
map <F9> :NERDTree<CR>
set backspace=indent,eol,start

" 只显示当前文件tag
let Tlist_Show_One_File=1
" taglist为最后一个窗口时退出vim
let Tlist_Exit_OnlyWindow=1
 "将taglist与ctags关联
let Tlist_Ctags_Cmd="/usr/bin/ctags"
"Taglist窗口显示在右侧
let Tlist_Use_Right_Window =1
"设置taglist窗口宽度
let Tlist_WinWidth = 40
" 设置开启、关闭快捷键
map <F6> :TlistOpen<CR>
map <F7> :TlistClose<CR>

" 高亮行尾空白符
hi ExtraWhitespace ctermbg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
