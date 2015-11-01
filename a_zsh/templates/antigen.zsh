source {{zsh_antigen_dir}}/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<EOF
{%for plugin in zsh_plugins%}
{{plugin|indent(2, true)}}
{%endfor%}
{%if ansible_local.skybet.antigen_plugins is defined%}
{%for plugin in ansible_local.skybet.antigen_plugins%}
{{plugin|indent(2, true)}}
{%endfor%}
{%endif%}
EOF
antigen apply

ZSH_THEME=$( shuf -n1 {{zsh_customdir}}/zsh_themes )
antigen theme $ZSH_THEME
