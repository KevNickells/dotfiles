" NOTE: This file is mostly to-dos. Access config files with ctrl+a

" This should do all the installation if I'm on a new system
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim folder to match shell folder on open
" exec "cd" . system("cat ~/.last_dir")

" leader key; needs to be set firstwise
let mapleader = ","

" TODO this should just be source folder
source ~/.vim_my_settings/.autocommands
source ~/.vim_my_settings/.spellings
source ~/.vim_my_settings/.plugins
source ~/.vim_my_settings/.settings
source ~/.vim_my_settings/.functions-and-commands
source ~/.vim_my_settings/.normal-mode-remaps
source ~/.vim_my_settings/.visual-mode-remaps
source ~/.vim_my_settings/.insert-mode-remaps
source ~/.vim_my_settings/.modal-colours
"source ~/.vim_my_settings/.file-specific-commands

" TODO functions -----------------------

" TODO cycle words /word cgn [new word] esc . [repeat] n [next]
" https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
" TODO wc word count
" TODO hey why am I even listing things as TODOs rather than raising them as
" issues? Commit messages probably look all shitty because of this.

" TODO Explor rather than Nerdtree in scratch-type drawer?

" TODO :h syn-conceal - possible to change displayed character

" TODO in the context of vimdiff, perhaps hjkl could just mean 'move left /
" right' and 'next conflict'?

" TODO vimdiff - see :h diffopt, maybe ignore all whitespace differences?

" TODO Probably time to abandon nerdTree and learn netrw

" TODO config_file_list in .insert-mode-remaps variable could be dynamically created.
" TODO visual mode find and replace
" TODO ,b type behaviour - search for current word in open buffers
" TODO ,b type behaviour - search for current word in project

" TODO onwrite for .vimrc, write the relevant files to here - ie, " .vim_my_settings, Snippets, ftplugin

" TODO Change background based on mode - see modal-colours; needs some work

" TODO go to tags - find out how to use these
command! MakeTags !ctags -R .

" TODO tidying   -----------------------

" TODO some normal mode remaps probably could do with being functions
" TODO might be tidier to have [array, of, functions] and a for x in array do nnoremap function
" TODO look into customising the status line (airline, maybs?)
" TODO Whoop_there_it_is -> function is a mess
