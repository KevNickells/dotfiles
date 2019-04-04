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
autocmd BufNewFile,BufRead ~/.vim_my_settings/* set syntax=vim

" Separating concerns for ease of use...
source ~/.vim_my_settings/.spellings
source ~/.vim_my_settings/.plugins
source ~/.vim_my_settings/.settings
source ~/.vim_my_settings/.functions-and-commands
source ~/.vim_my_settings/.normal-mode-remaps
source ~/.vim_my_settings/.visual-mode-remaps
source ~/.vim_my_settings/.insert-mode-remaps

" TODO when editing a vim file, on close source / close vimrc
" TODO tab > copy current parentheses in normal mode - C-I and <Tab> are equivalent
" TODO find and replace this word with another --> frr?
" TODO vim open files seem to store a different pwd than what I'd like it to an it's annoying
" TODO gf opens file from  'import'
" TODO React with vim - gf (open file) finds the "../address/ComponenetName" and goes there
" ^ These will look like a function - gf if file, go there, if not *ggnn gf
" ie, go to top, next twice then goto file
" TODO ttt searchfor current word in whole project (.vim-normal-mode-remaps) " doesn't work
" TODO some normal mode remaps probably could do with being functions
" TODO Change background based on mode; highlight currently active panel?
" highlight bar - pink for 'insert', green for 'visual'? Might be a shortcut
" :echo bufnr('%') -> show current buffer number
" :echo mode() n == normal
" :highlight Normal ctermfg=grey ctermbg=darkblue -> Changes the background
" 1 bufdo exit -> closes buffer one
" hi StatusLine ctermfg=colour ctermbg=colour -> statusline colour
" So... could change the current line / statusline/ anything else that's " changeable to colour x
" TODO might be tidier to have [array, of, functions]
" and a for x in array do nnoremap function
" TODO look into customising the status line (airline, maybs?)

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
