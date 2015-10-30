source {{zsh_antigen_dir}}/antigen.zsh

antigen theme $( shuf -n2 ~/.zsh_favlist )
antigen use oh-my-zsh
antigen bundles <<EOF
{%for plugin in all_zsh_plugins%}
{{plugin|indent(2, true)}}
{%endfor%}
EOF
antigen apply

ZSH_THEME=$( antigen list | awk '$3 == "theme" { print $2 }' )
