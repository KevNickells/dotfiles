" NOTE: This file is now mostly to-dos
" NOTE: File locations:
" .vim/ftplugin/haml.vim
" .vim/ftplugin/html.haml.vim
" .vim/ftplugin/javascript.vim
" .vim/ftplugin/python.vim
" .vim/ftplugin/ruby.vim

"leader key; needs to be set early otherwise other bits in these files don't work
let mapleader = ","

" Syntax highlighting for these config files
autocmd BufNewFile,BufRead ~/.vim* set syntax=vim

" Separating concerns for ease of use. Or unecessary abstractions, depending on taste
source ~/.vim-spellings
source ~/.vim-plugins
source ~/.vim-settings
source ~/.vim-functions-and-commands
source ~/.vim-normal-mode-remaps
source ~/.vim-visual-mode-remaps
source ~/.vim-insert-mode-remaps

" TODO ev to open new file in a split window
" TODO React with vim - gf (open file) finds the "../address/ComponenetName" and goes there
" TODO better syntax for regex find and replace
" TODO ttt searchfor current word in whole project (.vim-normal-mode-remaps)
" doesn't work
" TODO Change background based on mode; highlight currently active panel?

" This highlights current active window in a subtle way
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set colorcolumn=80
  autocmd WinLeave * set colorcolumn=0
augroup END

" TODO copy  & paste current code block; needs to be context dependant?
" nnoremap <Tab><Tab> v%lyO<esc>p
" Can probably leverage generic js
" (eg Bvt{%y)

" TODO go to tags - find out how to use these
command! MakeTags !ctags -R .

" TODO Search for current word in open buffers; - doesn't work bcause FZFLines doesn't  take pasted characters; so probably one to re-figure FZFLines as a function which takes a param?
" nnoremap tttt EvBy:<c-f>iFZFLines<Space><esc>p<c-c><cr>
