alias kc="kubectl"
export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/genuine-cat"
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
