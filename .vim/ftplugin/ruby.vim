" Snippets for common ruby things
nnoremap <leader>c  :r<space>~/Snippets/classRuby.rb<cr>
nnoremap <leader>m  :r<space>~/Snippets/methodRuby.rb<cr>
nnoremap <leader>mo :r<space>~/Snippets/moduleRuby.rb<cr>

"Debugger
nnoremap db obinding.pry<esc>
inoremap db binding.pry
" Capybara open screenshot
nnoremap ss osave_and_open_screenshot
inoremap sss save_and_open_screenshot

"Make this word a symbol
inoremap :: <esc>lbi:<esc>w
