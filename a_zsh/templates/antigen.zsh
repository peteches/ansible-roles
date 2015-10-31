source {{zsh_antigen_dir}}/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<EOF
{%for plugin in all_zsh_plugins%}
{{plugin|indent(2, true)}}
{%endfor%}
EOF
antigen apply

ZSH_THEME=$( shuf -n1 {{zsh_customdir}}/zsh_themes )
antigen theme $ZSH_THEME
