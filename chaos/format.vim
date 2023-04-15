"   ------ *> Format
" This is used to format the text display {{{
"   *> Character
"   *> Indent
"   *> Wrap
"   *> Scroll
"   *> }}}
"""""""""""""""""""""""""""""""""""""""""""""""
" => Character
" {{{
set number                         " 显示行号 " set nonumber
" set ff=unix                          " 告诉 vi 编辑器，使用unix换行符 , 因为如果是在windows下编写的脚本文件，放到Linux中无法识别格式 .
set list                                 " 显示不可见字符   set nolist    " 不显示不可见字符
" set listchars=tab:.\ ,trail:.   "将制表符显示为'.'
" set listchars=tab:?\ ,eol:?,trail:·,extends:>,precedes:<   " listchars 选项用于设置空格, 行尾结束符, Tab制表符的显示样式

" set smarttab       " 基于已有行的缩进, 来确定, 按<TAB>输入的缩进的长度 " set nosmarttab
" set expandtab    " 将输入的 Tab 自动转换为空格，此时 Tab 表示的是空格来而不是制表符
set noexpandtab  " Tab 不自动转换为空格，此时 Tab 按键表示制表符
" retab                  " 将文件中已有的TAB符(\t)替换成空格符(\s)
set tabstop=4        " 设置Tab键的宽度为4，默认的是8
set softtabstop=2  " 表示插入模式(insert mode)下，按退格键(backspace 删除键)缩进的长度
"""""""""""""""XXX"""""""""""""""
" 不同平台，设置不同的行尾符，即 EOL
" 注意：在 Mac 平台，也是 unix 优先；
" 自 OS X 始，行尾符与 Unix 一致，都是 `\n` 而不是 `\r`
"""""""""""""""XXX"""""""""""""""
if has("win32")
    set fileformats=dos,unix,mac
else
    set fileformats=unix,mac,dos
endif
" }}}
" => Indent
" {{{
set shiftwidth=2     " vim normal/visual mode: >>/>增加缩进('shift+.'='>')，<</<删除缩进，==/=自动对齐缩进
set shiftround        " 保证缩进的宽度是shiftwidth的整倍；影响的操作有>和<,即插入模式时的CTRL-T和CTRL-D
"""""""""""""""XXX"""""""""""""""
" t0: 函数返回类型声明不缩进
" g0: C++ "public:" 等声明缩进一个字符
" h1: C++ "public:" 等声明后面的语句缩进一个字符
" N-s: C++ namespace 里不缩进
" j1: 合理的缩进 Java 或 C++ 的匿名函数，应该也适用于 JS
"""""""""""""""XXX"""""""""""""""
set cindent      " C 风格的缩进, 适用大多数语言, 不能与smartindent一起使用 " set nocindent 
set cinoptions=t0,g1,h1,N-s,j1 " 细节调整，主要为了适应 Google C++ Style
" set autoindent     " 设置换行时，复制上一行的缩进到新起一行的前面
" set smartindent   " 一般与autoindent一起使用, 一些特殊的字符或关键词, 如{, }, if, else会自动增加一个缩进
" set nosmartindent
" }}}
" => Wrap
" {{{
" set colorcolumn=83  " 显示一条竖线以警示 , 配合文本宽度限制使用,  可据文件类型设置多列 , 比如 "81,101"
" set colorcolumn=-2   " 在char位置81绘制彩色条 , 也可是 =+
" highlight ColorColumn ctermbg=red ctermfg=white " 修改 colorcolumn 线的颜色
" highlight ColorColumn guibg=orange " 修改在 GUI 中的颜色 , (g)vim 7.3 添加此选项
set textwidth=1000        " 文本宽度限制, 每行超过 n 个字时, 自动加换行符, n 设为大数值可防止换行
set linebreak                  " 整词折换行
set wrap                         " 自动折行, 即将长的一行用多行来显示, 不添加换行符. set nowrap 
set breakindent              " 折行后的后续行，使用与第一行相同的缩进
set iskeyword+=_,$,@,%,#,-   " 带有 _ $ @ % # - 的单词不要被换行分割
set formatoptions+=mM " 在断行、合并(join)行时，针对多字节字符（比如中文）的优化处理
" }}}
" => Scroll
" {{{
" set whichwrap=b,s,<,>,[,]   " 设置光标移动的控制键
set scrolloff=5       "在光标接近底端或顶端时,自动下滚或上滚

" }}}
"""""""""""""""XXX"""""""""""""""