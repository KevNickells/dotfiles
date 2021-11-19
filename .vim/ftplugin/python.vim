nnoremap <leader>c :r<space>~/Snippets/classPython.py<cr>
nnoremap <leader>t :r<space>~/Snippets/testPython.py<cr>
nnoremap <leader>f :r<space>~/Snippets/functionPython.py<cr>

" logging
nnoremap csl Oprint()<esc>i
inoremap csl print()<esc>i
nnoremap pri Oprint()<esc>i
inoremap pri print()<esc>i
nnoremap db Obreakpoint()<esc>i
inoremap db breakpoint()<esc>i

nnoremap zs :term python3<cr>
nnoremap tst :term pytest -x --disable-warnings<cr>

function! Test_current_file()
  let path_to_file = expand('%:p')
  let test = ':term pytest ' . path_to_file . ' --tb=line'
  exec test
endfunction

nnoremap th :exec Test_current_file()<cr>

