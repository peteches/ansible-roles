function! s:kitchenctl(cmd)
	if exists('b:container')
		let l:cmd=':T pscli kitchen ' . a:cmd . ' ' . b:container
	elseif exists('g:container')
		let l:cmd=':T pscli kitchen ' . a:cmd . ' ' . g:container
	else
		let l:cmd=':T pscli kitchen ' . a:cmd
	endif

	execute l:cmd
endfunction

command! -nargs=1 Kitchenctl :call s:kitchenctl(<args>)

nnoremap <leader>kl :T pscli kitchen list<CR>

nnoremap <leader>kd :Kitchenctl "destroy"<CR>
nnoremap <leader>kc :Kitchenctl "converge"<CR>
nnoremap <leader>kv :Kitchenctl "verify"<CR>
nnoremap <leader>kt :Kitchenctl "test"<CR>
