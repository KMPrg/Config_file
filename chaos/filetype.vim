"   ------ *> Filetype
" This is set according to the file type {{{
"   *> Basic
"   *> C C++
"   *> }}}
"""""""""""""""""""""""""""""""""""""""""""""
" => Basic
" }}}
filetype on             " 侦测文件类型 ; filetype off 则关闭此功能
filetype plugin on  " 载入文件类型插件
filetype indent on  " 根据文件类型加载不同的缩进配置
set completeopt=longest,menu "打开文件类型检测后, 加上这句才可以用智能补全function
"""""""""""""""XXX"""""""""""""""
" au FileType text,markdown,html,xml set wrap " 根据文件格式自动折行
" 80列限制, 设置 textwidth 以实现一些情景下自动断行, 目前仅对 C/C++/Python/Vim 做这种限制
" 用 gq 格式化注释特别方便，超长的注释会自动重新排版，以保证不越过指定的长度。
" au FileType c,cpp,python,vim set textwidth=80
" }}}

" => C C++
" {{{
" Makefile 必须保留制表符，且习惯上占八个空格
au FileType make set noexpandtab | set tabstop=8 | set shiftwidth=8
" 对 C/C++ 等，制表符和缩进都是两个空格
au FileType c,cpp,html,htmldjango,lua,javascript,nsis
    \ set expandtab | set tabstop=2 | set shiftwidth=2
" }}}
"""""""""""""""XXX"""""""""""""""