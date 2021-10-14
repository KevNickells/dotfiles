function! Test_current_file()
  let path_to_file = expand('%')
  let test = ':term bats ' . path_to_file
  exec test
endfunction

nnoremap th :exec Test_current_file()<cr>
