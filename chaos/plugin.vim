"   ------ *> Plugin
" Here are the settings related to the plugin {{{
"   *> Display
"   *> Complete
"   *> }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Display
" {{{
"Rairbow-彩色括号 start
" {{{
" setting {{{

" }}}
" guidance {{{
" }}}
" }}}
" }}}
"""""""""""""""XXX"""""""""""""""
" => Complete
" {{{
" skywind3000/vim-auto-popmenu - 超轻量级代码补全系统 opt
" skywind3000/vim-dict - 补全字典 opt
" {{{
" setting {{{
" 用 packages 启用插件
packadd vim-auto-popmenu

" 设定需要生效的文件类型，如果是 "*" 的话，代表所有类型
let g:apc_enable_ft = {'text':1, 'markdown':1, 'php':1}

" 设定从字典文件以及当前打开的文件里收集补全单词，详情看 ':help cpt'
set cpt=.,k,w,b

" 不要自动选中第一个选项。
set completeopt=menu,menuone,noselect

" 禁止在下方显示一些啰嗦的提示
set shortmess+=c

" 补全字典
packadd vim-dict

" }}}
" guidance {{{
" -----------------------
" vim-auto-popmenu
" -----------------------
" 常用命令   只有两条命令, 且只对当前文档生效，不影响其他文件。
" ApcEnable：为当前文档开启补全（比如你没有设置上面的 g:apc_enable_ft 时）。
" ApcDisable：为当前文档禁用补全
" 插件共存
" 以 YouCompleteMe 为例，共存的话，先要设置 YCM 禁用某些文档：
" let g:ycm_filetype_blacklist = {'text':1, 'markdown':1, 'php':1}
" 这样编辑上面三种文件时 YCM 就不生效了，因为它本也不支持这三种文件的语义补全，接着设置对这三种文件自动运行这个补全小脚本：
" let g:apc_enable_ft = {'text':1, 'markdown':1, 'php':1}
" 这样这三种文件我们就用这个 apc.vim 的小脚本进行补全了，由于这三种类型的代码，YCM 本身语义补全的优势又发挥不出来，
" 而这个小脚本还能比 YCM 多提供一个字典补全，因此这些没有语义补全支持的文件类型上，这个小脚本的体验是可以比其他补全系统好的。
" 再就一个短的 apc.vim 脚本，易随你的 vimrc 一起部署，用时候只要扔到 ~/.vim/plugins 目录下面就能自动运行了，或者在 vimrc 最后：
" source /path/to/apc.vim
" 把 apc.vim 内容拷贝出来，直接粘贴在你 vimrc 里面也行。
" 再 LSP 无法工作或者不想费力安装 LSP 的情况下，它为你提供一个基本能用的补全系统。
" Configuration
" 1) g:apc_enable
" Default: 1 Set to 0 to disable this plugin.
" 2) b:apc_enable
" Default: unset Set to 0 to disable this plugin for certain buffer.
" 3) g:apc_min_length
" Default: 2 Minimal characters to trigger the completion popup menu.
" 4) g:apc_trigger
" Default: "\<c-n>" Key to trigger the completion popup menu. Set to "\<c-x>\<c-o>" to trigger omni completion.
" 5) b:apc_trigger
" Default: unset Specify trigger key for certain buffer, will override g:apc_trigger for certain buffer.
" ----------
" vim-dict
" ----------
" Add additional dict folders
" let g:vim_dict_dict = [
"    \ '~/.vim/dict',
"    \ '~/.config/nvim/dict',
"    \ ]
" File type override
" let g:vim_dict_config = {'html':'html,javascript,css', 'markdown':'text'}
" Disable certain types
" let g:vim_dict_config = {'text': ''}
" }}}
" }}}
" }}}
"""""""""""""""XXX"""""""""""""""