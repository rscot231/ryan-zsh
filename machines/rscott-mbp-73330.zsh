export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/genuine-cat"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

plugins+=(
  golang
  kubectl
  rscot231-k8s
)

# GO STUFF
export GOPATH=$HOME/go
