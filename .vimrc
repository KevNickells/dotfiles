" NOTE: This file is mostly to-dos. Access config files with ctrl+a

" Vim folder to match shell folder on open
exec "cd" . system("cat ~/.last_dir")

" leader key; needs to be set firstwise
let mapleader = ","

" TODO this should just be source folder
source ~/.vim_my_settings/.spellings
source ~/.vim_my_settings/.plugins
source ~/.vim_my_settings/.settings
source ~/.vim_my_settings/.functions-and-commands
source ~/.vim_my_settings/.normal-mode-remaps
source ~/.vim_my_settings/.visual-mode-remaps
source ~/.vim_my_settings/.insert-mode-remaps
source ~/.vim_my_settings/.modal-colours
source ~/.vim_my_settings/.syntax-highlighting-config
"
" TODO functions -----------------------

" TODO vimdiff could probably use a few shortcuts and that.

" TODO need to update to vim 8.1 in order to allow the changeDir function
" (functions and commands) to work. Would be nice to do that soon

" TODO gc flag to just say 'note to self'

" TODO config_file_list in .insert-mode-remaps variable could be dynamically created.
" TODO something saucy like sorting config_file_list bits by most-accessed file?

" TODO visual mode find and replace
" TODO ,b type behaviour - search for current word in open buffers
" TODO ,b type behaviour - search for current word in project

" TODO fh = find here -> search in current and subfolder rather than root
" echo expand('%:p:h')

" TODO onwrite for .vimrc, write the relevant files to here - ie, " .vim_my_settings, Snippets, ftplugin
" TODO Change background based on mode - see modal-colours; needs some work
" TODO contextual tab width - 4 at work, 2 at home?

" TODO gf Whoop_there_it_is - arguably it should always find / open a file so can probably do without all the checks and just open if exists / create here if it doesn't.

" TODO go to tags - find out how to use these
command! MakeTags !ctags -R .

" TODO tidying   -----------------------

" TODO some normal mode remaps probably could do with being functions
" TODO might be tidier to have [array, of, functions] and a for x in array do nnoremap function
" TODO look into customising the status line (airline, maybs?)
" TODO Whoop_there_it_is -> function is a mess
