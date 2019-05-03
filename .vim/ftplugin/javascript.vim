set complete+=k~/.vim/dictionaries/.javascriptBasicDictionary
set complete+=k~/.vim/dictionaries/.javascriptReactDictionary

" Snippets for common javascript things
nnoremap <leader>c :r<space>~/Snippets/classJavascript.js<cr>
nnoremap <leader>m :r<space>~/Snippets/methodJavascript.js<cr>
nnoremap <leader>t :r<space>~/Snippets/testJavascript.js<cr>
nnoremap <leader>rc :r<space>~/Snippets/reactClassJavascript.js<cr>

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
nnoremap tu :term npm test -- -u<cr>

" tidy up - ' to ", remove ending ;, respace
nnoremap td  :%s/'/"/g<cr>:%s/;$//g<cr>==

" self-explanatory probably. Possible that it'll get on my tits if too many cc words appear
nnoremap cc iconst<space>
inoremap cc const<space>

nnoremap succ isuccesful<space>
inoremap succ succesful<space>
