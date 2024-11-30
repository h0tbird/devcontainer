
# General:
alias ls='ls -hF --color --group-directories-first'
alias l='ls -l'
alias ll='ls -la'
alias grep='grep --color=auto'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias vim='nvim'
alias vimdiff='nvim -d'
alias tree='tree -C'
alias tf='terraform'

# Docker:
alias dim='docker images'
alias dps='docker ps'
alias drm='docker rm -v $(docker ps -qaf "status=exited")'
alias drmi='docker image prune -f'
alias drmia='docker image prune -af'

# Kubernetes:
alias k='kubectl'
