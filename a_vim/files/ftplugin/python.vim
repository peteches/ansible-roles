filetype plugin indent on

setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

let b:dispatch = '%'

nnoremap <buffer> <silent> <Leader>nt :call neoterm#do('pipenv run nose2')<cr>
