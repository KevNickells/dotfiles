nnoremap <leader>c :r<space>~/Snippets/classPython.py<cr>
nnoremap <leader>t :r<space>~/Snippets/testPython.py<cr>

"Debugger TODO DRY
"nnoremap db :r<space>~/Snippets/debuggerPython.py<cr>
"inoremap db :r<space>~/Snippets/debuggerPython.py<cr>

" logging
nnoremap csl Oprint()<esc>i
inoremap csl print()<esc>i
nnoremap pri Oprint()<esc>i
inoremap pri print()<esc>i

nnoremap zs :term python3<cr>
nnoremap tst :term pytest -x --disable-warnings<cr>
