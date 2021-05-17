export KUBECONFIG="$HOME/.kube/config"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

plugins+=(
  golang
  kubectl
  rscot231-k8s
  cdg
  qbec
)

# GO STUFF
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

#ALIASES
alias okt="okta-kube-token"
alias oa="okta-aws"
alias odl="okta-docker-login"

function oal()
{
  eval $(okta-aws-login)
}

alias tf="terraform"

function makedockerboot()
{
  echo "after running this press up, left, right, down, then choose continue"
  sleep 3
  screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty
}

export GOPRIVATE=cd.splunkdev.com
