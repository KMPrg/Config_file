"   ------ *> Function
" Custom functionality is placed here {{{
"   *> Trimming
"   *> Abbreviations
"   *> Listening
"   *> }}}
""""""""""""""""""""""""""""""""""""""""""""
" => Trimming
" {{{
" 删除行尾空格
" func! DeleteTrailingWS() 
"    exec "normal mz"
"    %s/\s\+$//ge
"    exec "normal `z"
" endfunc
" 保存时自动删除行尾空格
" au BufWrite * :call DeleteTrailingWS()
" map <leader>W :call DeleteTrailingWS()<CR>

" 移除只包含空格的行里的空格
" map <F3> :%s/\s*$//g<CR>:noh<CR>''<CR>
" }}}

" => Abbreviations
" {{{
" 缩写输入日期, 时间, 文件名
" iabbrev xname <YouName>
" iabbrev xmail <YouEmail> 
" iabbrev xfile <c-r>=expand("%:t")<CR>
" if exists("*strftime")
"     iabbrev xdate <c-r>=strftime("%Y-%m-%d")<CR>  " 当前日期
"     iabbrev xtime <c-r>=strftime("%H:%M:%S")<CR>   " 当前时间
" endif
" }}}

" => Listening
" {{{
" 监听事件,  第一次进入文件使用绝对行号, 进入编辑模式再退出到normal模式时再显示相对行号
" Vim 7.4 及以上版本能正常显示
set nu
augroup relative_numbser
 autocmd!
 autocmd InsertEnter * :set norelativenumber
 autocmd InsertLeave * :set relativenumber
augroup END
" }}}
"""""""""""""""XXX"""""""""""""""