export ANTIGEN_CACHE=false

source {{a_zsh_antigen_dir}}/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<EOF
{%for plugin in a_zsh_plugins%}
    {{-plugin|indent(2, true)}}
{%endfor%}
{%if ansible_local.employer.name is defined and ansible_local[ansible_local.employer.name] is defined%}
    {%-if ansible_local[ansible_local.employer.name].antigen_plugins is defined
	and ansible_local[ansible_local.employer.name].antigen_plugins is iterable%}
	{%-for plugin in ansible_local[ansible_local.employer.name].antigen_plugins%}
	    {{-plugin|indent(2, true)}}
	{%-endfor%}
    {%-endif%}
{%endif%}

EOF

ZSH_THEMES=$(cat {{a_zsh_customdir}}/zsh_themes )
ZSH_THEME=${ZSH_THEMES[RANDOM % $#ZSH_THEMES + 1]}

antigen theme $ZSH_THEME
antigen apply
