augroup BERKSFILE
	autocmd! BufWritePost,FileWritePost Berksfile :silent !rm <afile>.lock
augroup END
