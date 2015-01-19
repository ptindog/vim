"gvim在linux下菜单无法显示问题
"sudo ln -s menu_zh_cn.utf-8.vim menu_zh_cn.utf8.vim

"中文环境下设置GVIM的界面、菜单、提示为英文语言
"set the menu & the message to English
"set langmenu=en_US
"let $LANG= 'en_US'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

" 解决gVim中提示框乱码  
language message zh_CN.UTF-8

"语言设置
"set langmenu=zh_CN.UTF-8
"set helplang=cn

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936


"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
"set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,cp936
"set fileencoding=utf-8

"set go=             " 不要图形按钮 影响菜单栏 
"用Ctr+F2<C-F2>键呼出菜单栏/工具栏；待不使用时，用F2键将其关闭。
"用F2键呼出菜单栏/工具栏；待不使用时，用F2键将其关闭。
"Toggle Menu and Toolbar
set guioptions-=m           " 隐藏菜单栏  
set guioptions-=T           " 隐藏工具栏 
"map <silent> <F2> :if &guioptions =~# 'T' <Bar>
"        \set guioptions-=T <Bar>
"        \set guioptions-=m <bar>
"    \else <Bar>
"        \set guioptions+=T <Bar>
"        \set guioptions+=m <Bar>
"    \endif<CR>

map <silent> <F2> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
filetype off                  " required 插件设置完成再设置打开文件类型检查

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=$HOME/.vim/bundle/vundle/ "Windows下
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo Github网站上非vim-scripts仓库的插件需填写用户/资源名称
"Plugin 'tpope/vim-fugitive'
"vimscripts账号下的项目直接填写名称即可  vim-scripts仓库里的，按下面格式填写
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub  非github上资源
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Color
"Plugin 'asins/vim-colors'

"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'bling/vim-airline'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'jrhorn424/vim-multiple-cursors'


Plugin 'asins/vimcdoc'
"Plugin 'asins/vim-dict'

"Plugin 'Shougo/vimshell.vim'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'asins/renamer.vim'
"Plugin 'auto_mkdir'

" Syntax
"Plugin 'othree/html5.vim'
"Plugin 'othree/html5-syntax.vim'
"Plugin 'hallison/vim-markdown'
"Plugin 'pangloss/vim-javascript'
"Plugin 'nono/jquery.vim'
"Plugin 'groenewege/vim-less'

" Indent
"Plugin 'IndentAnything'
"Plugin 'jiangmiao/simple-javascript-indenter'


"Plugin 'Shougo/neocomplete.vim'
"Plugin 'asins/mark'

" HTML tools
"Plugin 'mattn/emmet-vim'
"Plugin 'tpope/vim-ragtag'
"Plugin 'matchit.zip' " 通过%跳转配对代码
"Plugin 'MatchTag' " HTML标签高亮配对
"Plugin 'maksimr/vim-jsbeautify' "HTML/CSS/JS代码格式化








" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 语法高亮
set syntax=on
" 显示行号
set number
" 突出显示当前行
"set cursorline 
"autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行 
" 高亮字符，让其不受100列限制  
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white  
match OverLength '/%101v.*'
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1     


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""状态栏
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 总是显示状态行2
set laststatus=2
" 打开状态栏标尺
set ruler  
                
" 设置在状态行显示的信息
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 状态行显示的内容 （包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}     

" 我的状态行显示的内容
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White


" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1
" 输入的命令显示出来，看的清楚些
set showcmd 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread

"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"代码补全 
set completeopt=preview,menu 

"共享剪贴板  
set clipboard+=unnamed 
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile

set magic                   " 设置魔术



set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable      " 允许折叠  
" 依缩进折叠 
"   manual  手工定义折叠 
"   indent  更多的缩进表示更高级别的折叠 
"   expr    用表达式来定义折叠 
"   syntax  用语法高亮来定义折叠 
"   diff    对没有更改的文本进行折叠 
"   marker  对文中的标志折叠 
set foldmethod=manual   " 手动折叠
" 用空格键来开关折叠  
set foldenable  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  

" 去掉输入错误的提示声音
"set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn
" 自动缩进,继承前一行的缩进方式，特别适用于多行注释
set autoindent
" 为C程序提供自动缩进
set smartindent
 
" 使用C样式的缩进
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 不要换行
set nowrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault


" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

"source $VIMRUNTIME/mswin.vim 
"设置鼠标运行模式为WINDOWS模式 
behave mswin 


" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
set lines=30 columns=85    " 设定窗口大小  
  

"set background=dark "背景使用黑色 
" 设置配色方案
colorscheme desert 
 
 
  
 
 
  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
"set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
"set novisualbell    " 不要闪烁(不明白) 
 
  

"set guifont=Courier_New:h10:cANSI   " 设置字体 
"字体 
"if (has("gui_running")) 
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
"endif
" 设定doc文档目录
let helptags=$VIM."/vimfiles/doc"
"set helplang=cn   
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif



" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新建文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: ma6174") 
        call append(line(".")+2, "\# mail: ma6174@163.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: ma6174") 
        call append(line(".")+2, "    > Mail: ma6174@163.com ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 
