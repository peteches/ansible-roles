" Added server spec file type detection

au BufRead,BufNewFile *_spec.rb if &ft == 'ruby' | set ft=server_spec.ruby |endif

