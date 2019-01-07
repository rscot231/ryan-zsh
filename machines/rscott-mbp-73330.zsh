export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/genuine-cat"

plugins+=(
  golang
  kubectl
  rscot231-k8s
)

# GO STUFF
export GOPATH=$HOME/go
