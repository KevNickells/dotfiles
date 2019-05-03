" NOTE: This file is now mostly to-dos
" NOTE: Language-specific locations:
" ~/.vim/ftplugin/haml.vim
" ~/.vim/ftplugin/html.haml.vim
" ~/.vim/ftplugin/javascript.vim
" ~/.vim/ftplugin/python.vim
" ~/.vim/ftplugin/ruby.vim

" add file-specific dictionaries
" set complete+=k~/.vim/dictionaries/.javascriptDictionary

" Default to most recent folder
exec "cd" . system("cat ~/.last_dir")

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
source ~/.vim_my_settings/.modal-colours

" TODO functions -----------------------
" TODO :vert diffsplit filename - could do with a shortcut, eg :diff filename,
" ideally with autocomit
" TODO Change background based on mode - see modal-colours; needs some work
" TODO ,b type behaviour - search for current word in open buffers
" TODO ,b type behaviour - search for current word in project
" TODO fh = find here -> search in current and subfolder rather than root
" echo expand('%:p:h')

" TODO gf Whoop_there_it_is - arguably it should always find / open a file so can probably do without all the checks and just open if exists / create here if it doesn't.
" TODO Whoop_there_it_is -> function is a mess

" TODO go to tags - find out how to use these
command! MakeTags !ctags -R .

" TODO tidying   -----------------------

" TODO some normal mode remaps probably could do with being functions
" TODO might be tidier to have [array, of, functions] and a for x in array do nnoremap function
" TODO look into customising the status line (airline, maybs?)
