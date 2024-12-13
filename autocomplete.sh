
# Completion

source <(kubectl completion zsh) && compdef _kubectl kubectl
source <(helm completion zsh) && compdef _helm helm
source <(kind completion zsh) && compdef _kind kind
source <(cilium completion zsh) && compdef _cilium cilium
source <(argocd completion zsh) && compdef _argocd argocd
source <(argo completion zsh) && compdef _argo argo
