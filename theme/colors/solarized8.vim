" Options {{{
" The following options are inherited from Solarized:

" g:solarized_visibility: one of "normal" (default), "low", "high";
" g:solarized_diffmode: one of "normal" (default), "low", "high";
" g:solarized_termtrans: make terminal background transparent if set to 1 (default: 0).

" The following options were not available in the original Solarized:

" g:solarized_statusline: one of "normal" (default), "low" or "flat";
let g:solarized_statusline="flat"
" g:solarized_italics: set to 0 to suppress italics (default is 1).
" g:solarized_old_cursor_style: set to 1 if you want to use the original Solarized's cursor style (default: 0). 
" By default, the cursor is orange/red in light themes, and blue in dark themes (but please note that your terminal may override the cursor's color).
" g:solarized_use16: set to 1 to force using your 16 ANSI terminal colors.
" g:solarized_extra_hi_groups: set to 1 to enable Solarized filetype-specific syntax highlighting groups (default is 0). 
" Please be aware that if your Vim is not recent enough you may encounter an issue with syntax items defined in color schemes.

" All these options may be used with any Solarized 8 variant.
" }}}
let g:solarized_termcolors=256
packadd! solarized8
autocmd vimenter * ++nested colorscheme solarized8
