" NOTE: This file is mostly to-dos. Access config files with ctrl+a

" Vim folder to match shell folder on open
exec "cd" . system("cat ~/.last_dir")

" leader key; needs to be set firstwise
let mapleader = ","

" TODO functions -----------------------

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
