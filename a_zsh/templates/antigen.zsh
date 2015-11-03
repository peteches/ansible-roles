source {{zsh_antigen_dir}}/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<EOF
{%for plugin in zsh_plugins%}
    {{-plugin|indent(2, true)}}
{%endfor%}
{%if ansible_local.employer.name is defined and ansible_local[ansible_local.employer.name] is defined%}
    {%-if ansible_local[ansible_local.employer.name].antigen_plugins is iterable%}
	{%-for plugin in ansible_local[ansible_local.employer.name].antigen_plugins%}
	    {{-plugin|indent(2, true)}}
	{%-endfor%}
    {%-endif%}
{%endif%}
EOF
antigen apply

ZSH_THEME=$( shuf -n1 {{zsh_customdir}}/zsh_themes )
antigen theme $ZSH_THEME
