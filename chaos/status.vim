"   ------ *> Status
" This is used to set the status bar area {{{
"   *> Display
"   *> Search
"   *> }}}
""""""""""""""""""""""""""""""""""""""""""""""
" => Display
" {{{
set laststatus=2  " 0 不显式状态行 ; 1 仅当窗口多于一个时, 显示状态行 ; 2 总是显式状态行.
set ruler              " 在状态行右下角显示光标位置
" set cmdheight=2   " 设置命令行(在状态行下面)的高度，默认高度是1，这里设为2
set wildmenu
set wildmode="list:longest"
set showcmd    " 显示输入中的命令
" }}}

" => Search
" {{{
set hlsearch      " 打开搜索高亮 " set nohlsearch 
set incsearch    " 渐进式搜索 " set noincsearch
" }}}
"""""""""""""""XXX"""""""""""""""