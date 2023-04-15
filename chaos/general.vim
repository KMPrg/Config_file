"   ------ *> General
" Common and unclassifiable settings are placed here {{{
"   *> Folding
"   *> Other_settings
"   *> Files and backups
"   *> Encoding & Language
"   *> Input method
"   *> Spell checking
"   *> Non-private mapping
"   *> }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding 
" {{{
" Fold_method : marker
augroup ft_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END
" }}}
" => Other_settings
" {{{
set nocompatible " 关闭兼容 vi 模式，vim 模式是 vi 加强版, 与 vi 并不完全兼容, 此项设置需第一个设定 .
" set compatible   " 关闭 vim 所有扩展的功能，尽量模拟 vi 的行为, 需要兼容 vi 脚本时开启。
set history=1024   " 历史记录数
set nobomb          " 让vim不自动设置字节序标记 , 一些编辑器不识别字节序标记 , 关闭以防止乱码
set backspace=indent,eol,start whichwrap+=<,>,[,]    " 输入模式下，退格键可以退一切字符
                             " backspace有几种工作方式，默认 vi兼容 , 对 vi 不熟人会挺困扰。
                             " indent: 当 : set indent ai 等自动缩进设置此项，start : 设置可删除此前的输入
                             " eol:插入模式下在行开头，想通过退格键合并两行设置此项。
set mouse=a         " 鼠标设置
set winaltkeys=no " 设置 alt 键不映射到菜单栏
" set ignorecase    " 忽略大小写；默认大小写敏感 " set noignorecase
" set smartcase     " 智能大小写；
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o   
                             " 取消自动注释；在一行注释后新加一行，Vim会自动在行首添加注释符号
set hidden            " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set lazyredraw    " 执行宏时不重画
set ttyfast           " 指示一个快速的终端链接
" }}}

" => Files and backups
" {{{
set nobackup    " 写入文件时，不做文件备份
set nowritebackup
set noswapfile   " 不创建临时交换文件
set autoread      " 检测到文件已在Vim外部更改且Vim内部未更改，则会自动再次读取
set autowrite     " 文件改动自动写入；有些改动无法使用 autowrite 可用 autowriteall
set autochdir     " 自动切换当前目录为当前文件所在的目录
set viewoptions=cursor  " 重新打开文件时，恢复上一次游标位置
                                       " 通过View可以记住很多设置，比如高亮当前行、折行等等
au BufWinLeave ?* mkview
au VimEnter ?* silent loadview
" }}}

" => Encoding & Language
" {{{
set encoding=UTF-8           " 编码设置
set termencoding=UTF-8   " term编码
set fileencoding=chinese   " 文件编码
set fileencodings=utf-8,ucs-bom,gbk,gb2312,cp936,gb18030,big5,euc-jp,euc-kr,latin1,chinese 
            " 启动时按照所列的字符编码方式逐一探测即将打开的文件字符编码方式 ,
            " 且将fileencoding 设置为最终探测到的字符编码方式 .
            " 这里按编码的严谨程度从高到低排序, ucs-bom最严谨, 但utf-8放在第一位。
set langmenu=zh_CN.UTF-8    " 菜单语言设置; 也可不带UTF-8, 直接 set langmenu=zh_CN
language messages zh_CN.UTF-8  " zh_CN.UTF-8    en_US.UTF-8
            " 以上部分语句会自动使其他格式的编码转化成 UTF-8 的编码，只要不保存就不会用 UTF-8 编码覆盖原文件格式。
let $LANG = 'zh_CN.UTF-8' " 环境变量 en_US.UTF-8
set helplang=cn   " 设置帮助语言为中文；先要在官网下载中文帮助文档安装才可使用此设置
" 执行如下命令来删除然后重建菜单栏, 作用是解决菜单栏乱码问题
let $VIMRUNTIME="/usr/share/vim/vim90"
set runtimepath=/usr/share/vim/vim90
source $VIMRUNTIME/delmenu.vim  " delmenu.vim 在vim安装目录 vim\vim90\delmenu.vim.
source $VIMRUNTIME/menu.vim       " menu.vim也在安装目录下, \vim\vim90\menu.vim
    " vim内常用的3个环境变量: $VIM, $VIMRUNTIME, $HOME, 详细内容可看帮助文档: 前两个应该是安装Vim时, vim创建。
    " $VIM被用来确定Vim中不同的用户文件的位置; $VIMRUNTIME 用来找出各种支持文件; 
    " "$HOME"的别名是"~"，使用方法一样 ,但它只能在选项开始之前和空格或逗号后面使用。
    " source FileName , 是在当前bash环境下读取并执行FileName中的命令, 该命令通常用命令“.”来替代。
    " 可用 echo 查看变量值，如果指向错误, 可更改。.vimrc 文件中的更改方法是在使用变量之前加上如下两个命令，
    " let $VIMRUNTIME="/usr/share/vim/vim90"
    " set runtimepath=/usr/share/vim/vim90
" }}}

" => Input method
" {{{
" set imdisable  " 使输入法无效，noimdisable 简写 noimd，这个命令作用于全局, 即所有模式
set iminsert=2  " 0是都关, 1是插入模式关, 命令行和 Lang-Arg 模式的 'lmap' 映射开, 2是插入模式开，lmap关
" if has("gui_running")
"   set imactivatekey=C-space     " 作用是让gvim控制输入法，好让下面的参数起作用
"   " inoremap  ESC ESC:set iminsert=2 CR " 在按下 ESC 的时候，自动关闭输入法.
"   inoremap <ESC> <ESC>:set iminsert=2<CR>
" endif
" }}}
" => Registers ( Clipboard )
" {{{
set clipboard+=unnamed  " Vim 的默认寄存器和系统剪贴板共享；这里是设置两者共享；unnamed 不记名寄存器即默认寄存器
" set paste                            " 进入 Paste 模式，该模式下可将文本原本的粘贴到 VIm 中，以避免一些格式错误
" set nopaste                        " 退出 Paste 模式
" set pastetoggle=<F5>       " 设定开关 Paste 模式的快捷键为 F5 (也可是其它按键).
" }}}

" => Spell checking
" {{{

" }}}

" => Non-private mapping
" {{{
" Map
" {{{
" 切换窗口的键盘映射：
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
" 用方向键切换缓存的键盘映射：
" map <right> :bn<CR>
" map <left>  :bp<CR>
" map <up>    :bf<CR>
" map <down>  :bl<CR>
" }}}
" Leader
" {{{
" let mapleader = ","     " 定义前缀键符号
" let g:mapleader = ","  " g , global , 指全局变量 , 外部函数定义可以访问全局 map-leader , 一般提供给插件 .
" }}}
"""" Shortcut key release
" }}}
"""""""""""""""XXX"""""""""""""""