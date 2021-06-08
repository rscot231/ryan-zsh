export KUBECONFIG="$HOME/.kube/config"
export PATH="$HOME/.rbenv/shims:$PATH:$HOME/Library/Python/3.7/bin"

plugins+=(
  golang
  kubectl
  rscot231-k8s
  cdg
  qbec
)

# GO STUFF
export GOPATH=$HOME/go
export GOPRIVATE=cd.splunkdev.com
export PATH="$PATH:$GOPATH/bin"

# OKTA STUFF
function odl() {
  OKTA_PASSWORD=$(echo -n $OKTA_BASE64 | base64 -D) okta-docker-login
}

function oal()
{
  OKTA_PASSWORD=$(echo -n $OKTA_BASE64 | base64 -D) eval $(okta-aws-login)
}

function okt() {
  OKTA_PASSWORD=$(echo -n $OKTA_BASE64 | base64 -D) okta-kube-token
}

export OKTA_MFA_OPTION=push

# OTHER ALIASES
alias tf="terraform"

function makedockerboot()
{
  echo "after running this press up, left, right, down, then choose continue"
  sleep 3
  screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty
}

