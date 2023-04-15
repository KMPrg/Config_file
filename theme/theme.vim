"   ------ *> Theme
" Place body colors and fonts and unclassifiable color and font configurations here {{{
"   *> Scheme
"   *> Highlight
"   *> Other colors
"   *> }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Scheme
" {{{
" base {{{
set t_Co=256                                      " 设置支持256色
" set guifont=Inconsolata:h15:cANSI " 设置 Gvim字体 ; 空格要用 _ 替换 , 例子 : Fira_Code:h15
                                                           " 命令行下的VIM受到终端Terminal的限制，所以其字体是继承终端Terminal的设置
" 设置Gvim为dark模式；terminal为light模式
" if has('gui_running')
"     set background=dark
" else
"     set background=light
" endif
" }}}
set background=dark

let c_sch = 'solarized8'  " 配色方案设置须放在所有theme设置之后 , 否则会报错 .
if c_sch == 'onedark'
    source $HOME/.vim/vim/theme/colors/onedark.vim
elseif c_sch == 'gruvbox'
    source $HOME/.vim/vim/theme/colors/gruvbox.vim
elseif c_sch == 'solarized8'
    source $HOME/.vim/vim/theme/colors/solarized8.vim
else
    source $VIMRUNTIME/colors/darkblue.vim
endif

" }}}
" => Highlight
" {{{
syntax on      " 语法高亮 , 关闭用 off；和 syntax enable 有些类似；syntax on将覆盖以前所做的颜色配置；设置colorsheme 时须开启
syntax enable  " 加载 $VIMRUNTIME 路径下的 syntax.vim , 语法高亮文件
set showmatch      " 高亮显示匹配的括号
set matchtime=1   " 匹配括号高亮的时间（单位是十分之一秒）
" }}}
" => Other colors
" {{{
" :h cursorline   ;   :h cursorline
" Vim识别三种不同的终端：term，黑白终端；cterm，彩色终端；gui，Gvim窗口。
" term，可以定义其字体显示为：bold、underline、reverse、italic或standout。
"            用逗号来组合使用这些属性：highlight Keyword term=reverse,bold
" cterm，可以用ctermfg设置前景色；用ctermbg设置背景色。
"              定义蓝底红字并使用下划线来显示注释：highlight Comment cterm=underline ctermfg=red ctermbg=blue
" gui，可以使用选项gui=attribute，来定义图形窗口下语法元素的显示属性。
"         推荐使 用的颜色包括：black, brown, grey, blue, green, cyan, magenta, yellow, white。
" set cursorline         " 开启光亮光标行
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" set cursorcolumn   " 开启高亮光标列
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" }}}
"""""""""""""""XXX"""""""""""""""