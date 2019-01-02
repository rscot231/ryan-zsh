# PATH STUFF
export PROJECTS="$HOME/projects"
export MVN_DIR="$PROJECTS/$(ls $PROJECTS | grep maven)"
export PATH="$PATH:$MVN_DIR/bin"
export PATH="$PATH:/Users/$USER/go/bin"
export PATH="$PATH:."

# OH-MY-ZSH CONFIG
export ZSH="$HOME/.oh-my-zsh"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM="$PROJECTS/ryan-zsh/custom"
ZSH_THEME="rscot231"

plugins=(
  git
  dotenv
)

source $ZSH/oh-my-zsh.sh

# ALIAS STUFF
alias gs="git status"
alias cdp="cd $PROJECTS"
alias cdg="cd $HOME/go/src"

# NVM STUFF
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# SPLUNK STUFF
alias cds="cd /Applications/Splunk/bin"

# K8S STUFF
alias kc="kubectl"
export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/genuine-cat"


