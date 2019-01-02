export PROJECTS="$HOME/projects"
export ZSH="/Users/rscott/.oh-my-zsh"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM="$PROJECTS/ryan-zsh/custom"
ZSH_THEME="rscot231"

plugins=(
  git
  dotenv
)

source $ZSH/oh-my-zsh.sh

# RYAN STUFF
alias gs="git status"
alias cdp="cd ~/projects"
alias cdg="cd ~/go/src"

# SPLUNK STUFF
alias cds="cd /Applications/Splunk/bin"

# NVM STUFF
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# K8S STUFF
alias kc="kubectl"
export KUBECONFIG="$KUBECONFIG:/Users/rscott/.kube/config:/Users/rscott/.kube/genuine-cat"

# PATH STUFF
export PATH="$PATH:/Users/$USER/projects/apache-maven-3.6.0/bin"
export PATH="$PATH:/Users/$USER/go/bin"
export PATH="$PATH:."

