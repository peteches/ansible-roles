EDITOR=$(whence nvim || echo /usr/bin/vim)
# set colors used by ls:
#
# keys:
# di = directory
# fi = file
# ln = sym link
# pi = fifo
# so = socket
# bd = block dev
# cd = char dev
# or = orphaned symlink
# mi = file pointed to by or
# ex = file which is executable
#
# colours:
# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text
# 7   = reverse field
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey
# 40  = black background
# 41  = red background
# 42  = green background
# 43  = orange background
# 44  = blue background
# 45  = purple background
# 46  = cyan background
# 47  = grey background
# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise
# 100 = dark grey background
# 101 = light red background
# 102 = light green background
# 103 = yellow background
# 104 = light blue background
# 105 = light purple background
# 106 = turquoise background
#
export LS_COLORS='di=34:fi=0:ln=32:so=35:bd=36:cd=95:or=41;90:mi=41;90:'

# set a nice debug prompt for bash scripts
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'

# set a keytimeout for when multi-key keybindings are used
export KEYTIMEOUT=500

PATH={{ a_zsh_path_dirs|join(":") }}

# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM={{a_zsh_customdir}}

cdpath=( $cdpath {{a_zsh_cdpaths|join(" ")}})
export cdpath

