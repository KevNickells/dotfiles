" NOTE: ~/Snippets contains file specific snippets
" NOTE: ~/.vim/ftplugin/{filetype}.vim has the file-specific shortcuts

"leader key; needs to be set before sourcing the below otherwise leader
"commands don't work until sourcing .vimrc
let mapleader = ","

" different files for different things
source ~/.vim-spellings
source ~/.vim-plugins
source ~/.vim-settings
source ~/.vim-functions-and-commands
source ~/.vim-normal-mode-remaps
source ~/.vim-visual-mode-remaps
source ~/.vim-insert-mode-remaps

" And some syntax highlighting for each
autocmd BufNewFile,BufRead ~/.vim-spellings              set syntax=vim
autocmd BufNewFile,BufRead ~/.vim-plugins                set syntax=vim
autocmd BufNewFile,BufRead ~/.vim-settings               set syntax=vim
autocmd BufNewFile,BufRead ~/.vim-normal-mode-remaps     set syntax=vim
autocmd BufNewFile,BufRead ~/.vim-visual-mode-remaps     set syntax=vim
autocmd BufNewFile,BufRead ~/.vim-functions-and-commands set syntax=vim
autocmd BufNewFile,BufRead ~/.vim-insert-mode-remaps     set syntax=vim

" TODO Change background based on mode; highlight currently active panel?
" Highlights current active window in a subtle way
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set colorcolumn=80
  autocmd WinLeave * set colorcolumn=0
augroup END

" TODO copy  & paste current code block
" nnoremap <Tab><Tab> v%lyO<esc>p

" TODO variable system installs if found?

" TODO go to tags - find out how to use these
command! MakeTags !ctags -R .


" Search for current word in open buffers; TODO - doesn't work bcause FZFLines doesn't  take pasted characters
" nnoremap tttt EvBy:<c-f>iFZFLines<Space><esc>p<c-c><cr>

" TODO could do with not repeating the  :let @*=expand("%:p:h") in lines 87 & 90 of .vim-normal-mode-remaps

" TODO shortcut to open browser & refresh? Can probably crib it from the blow
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
