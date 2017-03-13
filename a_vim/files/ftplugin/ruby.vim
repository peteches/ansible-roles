if exists("b:did_ruby")
	finish
endif
let b:did_ruby = 1

onoremap <buffer> ab :<c-u>execute "normal! j? do$?\rV/end/\r"<cr>
onoremap <buffer> ib :<c-u>execute "normal! j? do$?\rjV/end/\rk"<cr>

nnoremap <buffer> <silent> <leader>pkc :call neoterm#do('pscli kitchen converge')<cr>
nnoremap <buffer> <silent> <leader>pkd :call neoterm#do('pscli kitchen destroy')<cr>
nnoremap <buffer> <silent> <leader>pkl :call neoterm#do('pscli kitchen list')<cr>

setlocal expandtab
setlocal ts=2
setlocal sw=2
setlocal sts=2


