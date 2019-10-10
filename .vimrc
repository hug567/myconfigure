syntax on
"-----------------------------------------------"
" 插件管理器: Vundle
set nocompatible
filetype off
" Runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'       "插件管理
Plugin 'scrooloose/nerdtree'     "目录树
Plugin 'Valloric/YouCompleteMe'  "自动补全
Plugin 'ctrlpvim/ctrlp.vim'      "模糊搜索

call vundle#end()
filetype plugin indent on
"-----------------------------------------------"
" 显示行号
set number
" 搜索过程中高亮
set hlsearch
" 逐个字符高亮
set incsearch
" 设置配色主题
colorscheme molokai
" 显示tab
set list
" 设置tab显示格式
set listchars=tab:>-,trail:-
" 开启鼠标功能
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
" 允许光标跨行
"set whichwrap+=<,>,h,l

" 主窗口背景色
hi Normal ctermbg=NONE
" 行号列背景色
hi LineNr ctermbg=NONE
" VISUAL模式选中背景色
hi Visual ctermbg=238
" 光标背景色
"hi Cursor ctermbg=208
" 光标所在行背景色
set cursorline
hi CursorLine ctermbg=237
" 高亮匹配括号
hi MatchParen ctermfg=208 ctermbg=240
" 列宽提示宽度及背景色
let &colorcolumn="80"
hi ColorColumn ctermbg=237
" 高亮行尾空白符
hi ExtraWhitespace ctermbg=red
autocmd ColorScheme * hi ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
" 高亮函数名
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunctions ctermfg=81
" 高亮C语言关键字
syn keyword cKeywords char short int long float double const signed unsisgned
syn keyword cKeywords for if else do while switch case break continue goto
syn keyword cKeywords struct union enum typedef typeof default return
syn keyword cKeywords auto static register volatile extern void sizeof
syn keyword cKeywords u8 u16 u32 u64 s8 s16 s32 s64
syn keyword cKeywords U8 U16 U32 U64 S8 S16 S32 S64
hi cKeywords ctermfg=198
" 高亮运算符
syn match cOperators display "[-+*%=<>|.&!^~:]"
hi cOperators ctermfg=227
" 常用语法高亮
hi Character ctermfg=220
hi String ctermfg=220
"hi Contional ctermfg=198
hi Macro ctermfg=198
hi PreCondit cterm=NONE ctermfg=198
hi PreProc ctermfg=198
hi Search ctermbg=220
hi SpecialChar cterm=NONE ctermfg=198
hi Statement ctermfg=198

" 打开NERDTree快捷键
map <F9> :NERDTree<CR>
set backspace=indent,eol,start

" 只显示当前文件tag
let Tlist_Show_One_File=1
" Taglist为最后一个窗口时退出vim
let Tlist_Exit_OnlyWindow=1
 "Taglist与ctags关联
let Tlist_Ctags_Cmd="/usr/bin/ctags"
" Taglist窗口显示在右侧
let Tlist_Use_Right_Window =1
" Taglist窗口宽度
let Tlist_WinWidth = 40
" Taglist开启、关闭快捷键
map <F6> :TlistOpen<CR>
map <F7> :TlistClose<CR>
