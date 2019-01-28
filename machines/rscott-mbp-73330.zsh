export KUBECONFIG="$HOME/.kube/config"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

plugins+=(
  golang
  kubectl
  rscot231-k8s
  cdg
)

# GO STUFF
export GOPATH=$HOME/go

#ALIASES
alias okt="okta-kube-token"
alias oa="okta-aws"
alias oal="okta-aws-login"
alias odl="okta-docker-login"

alias mk="time minikube"
alias mks="mk start --memory 4096 --cpus 4"

q()
{
     pushd ~/go/src/cd.splunkdev.com/kub/addons
     qbec "$@"
     popd
}