nnoremap <silent> <Leader>nt :call neoterm#do('pipenv run nose2')<cr>
autocmd! BufNewFile,BufRead *.tac setfiletype python
