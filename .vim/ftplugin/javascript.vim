set complete+=k~/.vim/dictionaries/.javascriptBasicDictionary
set complete+=k~/.vim/dictionaries/.javascriptReactDictionary

" Snippets for common javascript things
nnoremap <leader>c :r<space>~/Snippets/classJavascript.js<cr>
nnoremap <leader>f :r<space>~/Snippets/functionJavascript.js<cr>
nnoremap <leader>m :r<space>~/Snippets/methodJavascript.js<cr>
nnoremap <leader>t :r<space>~/Snippets/testJavascript.js<cr>
nnoremap <leader>cr :r<space>~/Snippets/reactClassJavascript.js<cr>
nnoremap <leader>r :r<space>~/Snippets/reduceJavaScript.js<cr>
nnoremap <leader>re :r<space>~/Snippets/reducerJavaScript.js<cr>
nnoremap <leader>ac :r<space>~/Snippets/actionJavaScript.js<cr>
nnoremap <leader>ms :r<space>~/Snippets/mapStateToPropsJavaScript.js<cr>
nnoremap <leader>md :r<space>~/Snippets/mapDispatchToPropsJavaScript.js<cr>

" debugger shortcut
nnoremap db Odebugger;<esc>
inoremap db debugger;<space><esc>

" console.log
nnoremap csl Oconsole.log()<esc>i
inoremap csl console.log()<esc>i

" console.table
nnoremap cst Oconsole.table()<esc>i
inoremap cst console.table()<esc>i

" Object.keys
nnoremap obk OObject.keys()<esc>i
inoremap obk Object.keys()<esc>i

"open js REPL
nnoremap zs :term node<cr>

" run test, update fixtures
nnoremap tst :term npm test<cr>
nnoremap tu :term npm test -- -u<cr>

" tidy up - ' to ", remove ending ;, respace
nnoremap td  :%s/'/"/g<cr>:%s/;$//g<cr>==

nnoremap cc iconst<space>
inoremap cc const<space>


" shortcuts because cc = const
noremap acc iacc<space>
inoremap acc acc<space>

nnoremap succ isuccesful<space>
inoremap succ succesful<space>


" shortcuts because rr = return
nnoremap rr ireturn<space>
inoremap rr return<space>

nnoremap arr iarray<space>
inoremap arr array<space>

nnoremap err ierror<space>
inoremap err error<space>


function! Test_current_file()
  let path_to_file = expand('%')
  let test = ':term npm test -- ' . path_to_file . ' --coverage=false'
  exec test
endfunction

nnoremap th :exec Test_current_file()<cr>
