# Basic file handling
alias mv='\mv -i' # ask before overwrite file
alias cp='\cp -i' # ask before overwrite file
alias rm='\rm -i' # ask before remove file
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cat='batcat'
#alias less='batcat --paging=always'

# Pretty-print of the PATH variable:
alias path='echo -e ${PATH//:/\\n}'

alias du='du -kh'
alias df='df -kTh'

# ls
alias ls='ls -h --color=auto'
alias l='ls -lhv'
alias ll='ls -lAhv'

# #-------------------------------------------------------------
# # The 'ls' family (this assumes you use a recent GNU ls).
# #-------------------------------------------------------------
# # Add colors for filetype and  human-readable sizes by default on 'ls':
# alias ls='ls -h --color'
# alias lx='ls -lXB'         #  Sort by extension.
# alias lk='ls -lSr'         #  Sort by size, biggest last.
# alias lt='ls -ltr'         #  Sort by date, most recent last.
# alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
# alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
#
# # The ubiquitous 'll': directories first, with alphanumeric sorting:
# alias ll="ls -lv --group-directories-first"
# alias lm='ll |more'        #  Pipe through 'more'
# alias lr='ll -R'           #  Recursive ls.
# alias la='ll -A'           #  Show hidden files.
# alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# grep
alias grep='grep --color=auto' # colorize matching parts

# Maven
if [ -x "$(command -v mvn)" ]; then
  alias mvn="mvn-colorized"
  alias mcc='mvn clean compile'
  alias mcp='mvn clean package'
  alias mci='mvn clean install'
fi

# Kubernetes
if [ -x "$(command -v kubectl)" ]; then alias kc='kubectl'; fi
if [ -x "$(command -v kubectx)" ]; then alias kx='kubectx'; fi
if [ -x "$(command -v kubens)" ]; then alias kn='kubens'; fi

# other
alias man='man-colorized'
alias xopen='xdg-open'
alias gitg='nohup gitg > /dev/null 2>&1 &'
if [ -x "$(command -v docker-compose)" ]; then alias dc='docker-compose'; fi
