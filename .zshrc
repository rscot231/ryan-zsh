# PATH STUFF
export PROJECTS="$HOME/projects"
export MVN_DIR="$PROJECTS/$(ls $PROJECTS | grep maven)"
export PATH="$PATH:$MVN_DIR/bin"
export PATH="$PATH:/Users/$USER/go/bin"
export PATH="$PATH:$PROJECTS/bin"
export PATH="$PATH:."

# OH-MY-ZSH CONFIG
export ZSH="$HOME/.oh-my-zsh"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM="$PROJECTS/ryan-zsh/custom"
ZSH_THEME="rscot231"

plugins=(
  dotenv
  git
  git-prompt
  golang
  kubectl
  rscot231-k8s
)

source $ZSH/oh-my-zsh.sh

# ALIAS STUFF
alias cdp="cd $PROJECTS"

# NVM STUFF
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# GO STUFF
export GOPATH=$HOME/go

# SPLUNK STUFF
alias cds="cd /Applications/Splunk/bin"
export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/genuine-cat"
