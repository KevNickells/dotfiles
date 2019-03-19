" Snippets for common javascript things
nnoremap <leader>c  :r<space>~/Snippets/classJavascript.js<cr>
nnoremap <leader>m  :r<space>~/Snippets/methodJavascript.js<cr>

nnoremap db Odebugger;<esc>
inoremap db debugger;<space><esc>

nnoremap csl Oconsole.log()<esc>i
inoremap csl console.log()<esc>i

nnoremap zs :term node<cr>
nnoremap tst :term npm test<cr>
nnoremap tstu :term npm test -- -u<cr>

nnoremap <leader>t :r<space>~/Snippets/testJavascript.js<cr>

" tidy up - ' to ", remove ending ;, respace
nnoremap td  :%s/'/"/g<cr>:%s/;$//g<cr>==


