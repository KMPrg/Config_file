"   ------ *> GUI
" This is where you set up VIM's graphical user interface {{{
"   *> Window
"   *> Tags
"   *> }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window
" {{{
" set lines=30 columns=180   " GUI窗口大小, 这是vim的GUI设置, 终端里用vim需注释掉，否则会冲突。
set fillchars=vert:\ ,stl:\ ,stlnc:\   " 在被分割的窗口间显示空白，便于阅读
" 图形界面选项（guioption）设置
" 这里的”-=“和”+=“是用 set 命令更改 shell 特性时使用，分别表示打开、关闭指定的模式，详情可 :help set
" set guioptions-=T     " 隐藏工具栏tool
" set guioptions-=m    " 隐藏菜单栏menu
" set guioptions-=g   " +=g 使不活动的菜单栏变成灰色；如果是 -=g，就是不显示不活动的菜单栏
" set guioptions-=L      " 隐藏左侧滚动条
" set guioptions-=r      " 隐藏右侧滚动条
" set guioptions-=b     " 隐藏底部滚动条
" set guioptions+=e    " 不用内置 tabpage (标签页)样式，使用 GUI标签页 样式；
                                  " 'showtabline'要求加入标签页时.如果没有'e'（即-=e）,可能使用非GUI标签页行.
" }}}

" => Tags
" {{{
" set showtabline=1   " 设置标签栏的显示：0是永远不显示；1是两个以上显示；2是永远显示
" set splitbelow  " 下边, 位于当前窗口下边
" set splitright    " 右边, 与nerdtree一起使用效果很好. 注意，除非有人使用，否则这将使所有进一步的拆分成为水平拆分，而不是垂直拆分vsplit
" Taglist(ctags) 设置   Taglist是vim的一个插件，提供源代码符号的结构化视图
" set rtp+=~/.vim/pack/nerdtree
" autocmd vimenter * NEROTree
" set tags=tags;
" set autochdir  " 注意第一个命令里的分号是必不可少的。这个命令让vim首先在当前目录里寻找tags文件，
                       " 如果没有找到tags文件，或者没有找到对应的目标，就到父目录中查找，一直向上递归。
                       " 因为tags文件中记录的路径总是相对于tags文件所在的路径，所以要使用第二个设置项来改变vim的当前目录。
                       " 如果不加入这两个语句，那么有的宏定义，还有一些就找不到了。
" let Tlist_Show_One_File = 1        " 不同时显示多个文件的 taglist，只显示当前文件的
" let Tlist_Exit_OnlyWindow = 1    " 如果taglist窗口是最后一个窗口，则退出vim
" let Tlist_Use_Right_Window = 1 " 在右侧窗口中显示 taglist 窗口
" let Tlist_Auto_Open=1               " 自动打开 taglist
" }}}
"""""""""""""""XXX"""""""""""""""