source ~/.vim/ftplugin/javascript.vim
" use js mostly but any ts-specific things can go here

" REPL
nnoremap zs :term ts-node<cr>

" class
nnoremap <leader>c :r<space>~/Snippets/classTypescript.ts<cr>
nnoremap <leader>t :r<space>~/Snippets/testTypescript.ts<cr>
nnoremap <leader>it :r<space>~/Snippets/testTypescriptSingle.ts<cr>

nnoremap <leader>a :r<space>~/Snippets/fullTestTypescript.ts<cr>


