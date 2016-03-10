# Completions ##################################################################
zstyle :compinstall filename "$0"

autoload -Uz compinit && compinit

export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30"

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "$LS_COLORS"

zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

setopt AUTO_CD
