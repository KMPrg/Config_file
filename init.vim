" Q-v.2.2 {{{
" Freedom, responsibility, fun
" }}}
">*------------------------------*<"
"                Modularity
"<*------------------------------*>"
"   ------ *> README
"   ------ *> General
" Common and unclassifiable settings are placed here
" {{{
"   *> Folding
"   *> Other_settings
"   *> Files and backups
"   *> Encoding & Language
"   *> Input method
"   *> Spell checking
"   *> Non-private mapping
"   *> }}}
"   ------ *> Theme
" Place body colors and fonts and unclassifiable color and font configurations here
" {{{
"   *> Scheme
"   *> Highlight
"   *> Other colors
"   *> }}}
"   ------ *> Format
" This is used to format the text display
" {{{
"   *> Character
"   *> Indent
"   *> Wrap
"   *> Scroll
"   *> }}}
"   ------ *> Status
" Settings related to the status bar area
" {{{
"   *> Visual
"   *> Moving around and tabs
"   *> General Autocommands
"   *> Parenthesis/bracket expanding
"   *> General Abbreviation
"   *> Editing mappings etc.
"   *> Command-line config
"   *> Buffer realted
"   *> Text options
"   *> }}}
"   ------ *> GUI
" This is where you set up VIM's graphical user interface
" {{{
"   *> Window
"   *> Tags
"   *> }}}
"   ------ *> Filetype
" Each language is individually configured according to its file type
" {{{
"   *> Basic
"   *> C C++
"   *> Lua
"   *> }}}
"   ------ *> Function
" Custom functionality is placed here
" {{{
"   *> Trimming
"   *> Abbreviations
"   *> Listening
"   *> }}}
"   ------ *> Plugin
" Call the plugin and place the plugin configuration here
" {{{
"   *> Display
"   *> }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startup
set packpath=$HOME/.vim/vim  " 设置 packages 管理插件的起始目录

" => Load the module
"""""""""""""""XXX"""""""""""""""
source $HOME/.vim/vim/theme/theme.vim

source $HOME/.vim/vim/chaos/general.vim
source $HOME/.vim/vim/chaos/format.vim
source $HOME/.vim/vim/chaos/status.vim
source $HOME/.vim/vim/chaos/gui.vim
source $HOME/.vim/vim/chaos/filetype.vim
source $HOME/.vim/vim/chaos/function.vim
source $HOME/.vim/vim/chaos/plugin.vim
"""""""""""""""XXX"""""""""""""""