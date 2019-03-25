" NOTE: This file is now mostly to-dos
" NOTE: Language-specific locations:
" .vim/ftplugin/haml.vim
" .vim/ftplugin/html.haml.vim
" .vim/ftplugin/javascript.vim
" .vim/ftplugin/python.vim
" .vim/ftplugin/ruby.vim

" add file-specific dictionaries
" set complete+=k~/.vim/dictionaries/.javascriptDictionary

"leader key; needs to be set early otherwise other bits in these files don't work
let mapleader = ","

" Syntax highlighting for these config files
autocmd BufNewFile,BufRead ~/.vim* set syntax=vim

" Separating concerns for ease of use... could go in plugins?
source ~/.vim_my_settings/.spellings
source ~/.vim_my_settings/.plugins
source ~/.vim_my_settings/.settings
source ~/.vim_my_settings/.functions-and-commands
source ~/.vim_my_settings/.normal-mode-remaps
source ~/.vim_my_settings/.visual-mode-remaps
source ~/.vim_my_settings/.insert-mode-remaps

" TODO after save, remove that find and replace from the recent searches
" TODO gf opens file from  'import'
" TODO tm shows the time in the bar thing
" TODO React with vim - gf (open file) finds the "../address/ComponenetName" and goes there
" TODO ttt searchfor current word in whole project (.vim-normal-mode-remaps) " doesn't work
" TODO Change background based on mode; highlight currently active panel?
" :echo bufnr('%') -> show current buffer number
" :echo mode() n == normal
" :highlight Normal ctermfg=grey ctermbg=darkblue -> Changes the background
" 1 bufdo exit -> closes buffer one
" hi StatusLine ctermfg=colour ctermbg=colour -> statusline colour
" So... could change the current line / statusline/ anything else that's " changeable to colour x
" TODO might be tidier to have [array, of, functions]
" and a forr x in array do nnoremap function


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
