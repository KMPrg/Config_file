" onedark.vim
" --------------
" options {{{
" let g:lightline = {
  " \ 'colorscheme': 'onedark',
  " \ }
" let g:airline_theme='onedark'
let g:onedark_termcolors=256
" let g:onedark_termcolors=16
" }}}
" Customizing onedark.vim's look without forking the repository {{{
" onedark.vim exposes onedark#extend_highlight and onedark#set_highlight functions 
" that you can call from within your ~/.vimrc in order to customize the look of onedark.vim.
" onedark#extend_highlight
" onedark#extend_highlight allows you to customize individual aspects of onedark.
" vim's existing highlight groups, overriding only the keys you provide. 
" To completely redefine/override an existing highlight group, see onedark#set_highlight below.

" onedark#extend_highlight's first argument should be the name of a highlight group, and its second argument should be partial style data.

" Place the following lines before the colorscheme onedark line in your ~/.vimrc, then change the example overrides to suit your needs:

" if (has("autocmd"))
"   augroup colorextend
"     autocmd!
"     " Make `Function`s bold in GUI mode
"     autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
"     " Override the `Statement` foreground color in 256-color mode
"     autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
"     " Override the `Identifier` background color in GUI mode
"     autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
"   augroup END
" endif
" onedark#set_highlight
" onedark#set_highlight allows you to completely redefine/override highlight groups of your choosing.

" onedark#set_highlight's first argument should be the name of a highlight group, and its second argument should be complete style data.

" For example, to remove the background color only when running in terminals (outside GUI mode and for use in transparent terminals,) 
" place the following lines before the colorscheme onedark line in your ~/.vimrc:

" " onedark.vim override: Don't set a background color when running in a terminal;
" " just use the terminal's background color
" " `gui` is the hex color code used in GUI mode/nvim true-color mode
" " `cterm` is the color code used in 256-color mode
" " `cterm16` is the color code used in 16-color mode
" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif
" Global color overrides
" You can override colors across all highlights by adding color definitions to the g:onedark_color_overrides dictionary in your ~/.vimrc like so:

" let g:onedark_color_overrides = {
" \ "background": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
" \ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
" \}
" This also needs to be done before colorscheme onedark.

" More examples of highlight group names and style data can be found in onedark.vim's source code (colors/onedark.vim inside this repository).
" }}}

packadd! onedark
colorscheme onedark
