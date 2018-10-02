" NOTE: ~/Snippets contains file specific snippets
" NOTE: ~/.vim/ftplugin/{filetype}.vim has the file-specific shortcuts
" NOTE: This file is now mostly to-dos

"leader key; needs to be set before sourcing the below otherwise leader
"commands don't work until sourcing .vimrc
let mapleader = ","

" Tryinng this out; to migrate if it works
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" Syntax highlighting for these config files
autocmd BufNewFile,BufRead ~/.vim-* set syntax=vim

" Separating concerns for ease of use. Or unecessary abstractions, depending on taste
source ~/.vim-spellings
source ~/.vim-plugins
source ~/.vim-settings
source ~/.vim-functions-and-commands
source ~/.vim-normal-mode-remaps
source ~/.vim-visual-mode-remaps
source ~/.vim-insert-mode-remaps

" TODO zs currently opens zsh - make it better and probably more emac-y

" TODO open shell with REPL with zn [node], zr [ruby] etc

" TODO fp to find binding.pry in open buffers (eg ,b)

" TODO toggle tw=0 quickly with 000; is set as merely turn it off for now.

" TODO - tempoararily change to this folder to search only within it?

" TODO dj to delete blank lines between here and below.(eg
" line\n\n\n\n\n\n\n\nnextline becomes line\nnextline)

" TODO construct list of random words to be generated for variables, make sure none are present when committing (except in specs)

" TODO convert " to ' around a word to satiate the linter; ... possibly it's
" just needed to figure out how to accept rubocop suggestions with ruby?

" TODO Change background based on mode; highlight currently active panel?


" This highlights current active window in a subtle way
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set colorcolumn=80
  autocmd WinLeave * set colorcolumn=0
augroup END

" TODO Rails plugin by TPope. Who is good

" TODO copy  & paste current code block; needs to be context depetndant?
" nnoremap <Tab><Tab> v%lyO<esc>p
" Can probably leverage generic js
" (eg Bvt{%y)
" and Ruby indent-wise for this
" (eg <leader>nNvn or something less stupid)

" TODO figure out 'install if not found...' so I don't have to do a load of instally bore every time I'm on a new machine

" TODO go to tags - find out how to use these
command! MakeTags !ctags -R .

" TODO Search for current word in open buffers; - doesn't work bcause FZFLines doesn't  take pasted characters; so probably one to re-figure FZFLines as a function which takes a param?
" nnoremap tttt EvBy:<c-f>iFZFLines<Space><esc>p<c-c><cr>

" TODO shortcut to open browser & refresh? Can probably crib it from the below
"   from https://github.com/junegunn/dotfiles/blob/bc9038c/vimrc  - google with ,?
" let url = 'https://www.google.co.kr/search?q='
" " Excerpt from vim-unimpared
" let q = substitute(
"         \ '"'.@0.'"',
"         \ '[^A-Za-z0-9_.~-]',
"         \ '\="%".printf("%02X", char2nr(submatch(0)))',
"         \ 'g')
"   call system('open ' . url . q)
" endfunction
"
" xnoremap <leader>? y:call <SID>goog()<cr>

" Save session on close; stolen from here: http://vim.wikia.com/wiki/Go_away_and_come_back TODO not currently working
" function! MakeSession()
"   let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
"   if (filewritable(b:sessiondir) != 2)
"     exe 'silent !mkdir -p ' b:sessiondir
"     redraw!
"   endif
"   let b:filename = b:sessiondir . '/session.vim'
"   exe "mksession! " . b:filename
" endfunction
"
" function! LoadSession()
"   let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
"   let b:sessionfile = b:sessiondir . "/session.vim"
"   if (filereadable(b:sessionfile))
"     exe 'source ' b:sessionfile
"   else
"     echo "No session loaded."
"   endif
" endfunction
"
" au VimEnter * nested :call LoadSession()
" au VimLeave * :call MakeSession()
"
