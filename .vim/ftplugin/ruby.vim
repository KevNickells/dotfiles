" Snippets for common ruby things
nnoremap <leader>c  :r<space>~/Snippets/classRuby.rb<cr>
nnoremap <leader>m  :r<space>~/Snippets/methodRuby.rb<cr>
nnoremap <leader>mo :r<space>~/Snippets/moduleRuby.rb<cr>

"Debugger
nnoremap db orequire pry; binding.pry<esc>;
inoremap db require pry; binding.pry

"Make this word a symbol
inoremap :: <esc>lbi:<esc>w
