let s:plugin_dir=expand('<sfile>:p:h:h') . '/plugin'

echom 'plugindir: ' . s:plugin_dir

execute 'source ' .  s:plugin_dir . '/testkitchen.vim'
