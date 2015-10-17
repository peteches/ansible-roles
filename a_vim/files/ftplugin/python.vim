filetype plugin indent on

setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

let b:dispatch = '%'

augroup SYNTAX
	autocmd!
	autocmd FileWritePre,FileAppendPre,FilterWritePre,BufWritePre * Pep8
augroup END
