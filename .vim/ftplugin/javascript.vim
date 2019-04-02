set complete+=k~/.vim/dictionaries/.javascriptBasicDictionary
set complete+=k~/.vim/dictionaries/.javascriptReactDictionary

" Snippets for common javascript things
nnoremap <leader>c  :r<space>~/Snippets/classJavascript.js<cr>
nnoremap <leader>m  :r<space>~/Snippets/methodJavascript.js<cr>

" debugger shortcut
nnoremap db Odebugger;<esc>
inoremap db debugger;<space><esc>

" console.log
nnoremap csl Oconsole.log()<esc>i
inoremap csl console.log()<esc>i

" console.table
nnoremap cst Oconsole.table()<esc>i
inoremap cst console.table()<esc>i

"open js REPL
nnoremap zs :term node<cr>

" run test, update fixtures
nnoremap tst :term npm test<cr>
nnoremap tstu :term npm test -- -u<cr>

" js test
nnoremap <leader>t :r<space>~/Snippets/testJavascript.js<cr>

" tidy up - ' to ", remove ending ;, respace
nnoremap td  :%s/'/"/g<cr>:%s/;$//g<cr>==
