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

# RUBY STUFF
eval "$(rbenv init -)"

#ALIASES
alias okt="okta-kube-token"
alias oa="okta-aws"
alias odl="okta-docker-login"

function oal()
{
  eval $(okta-aws-login)
}

alias tf="terraform"
alias mk="time minikube"
alias mks="mk start --memory 4096 --cpus 4"

export IAC_DEVMODE=1
export IAC_DB_HOST=localhost
export IAC_DB=identity
export IAC_DB_USER=splunk
export IAC_DB_PASSWORD=password
