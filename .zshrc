# PATH STUFF
export PROJECTS="$HOME/projects"
export MVN_DIR="$PROJECTS/$(ls $PROJECTS | grep maven)"
export PATH="$PATH:$MVN_DIR/bin"
export PATH="$PATH:/Users/$USER/go/bin"
export PATH="$PATH:$PROJECTS/bin"
export PATH="$PATH:."

# BASE oh-my-zsh CONFIG
export ZSH="$HOME/.oh-my-zsh"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM="$PROJECTS/ryan-zsh/custom"
ZSH_THEME="rscot231"

# BASE PLUGINS
plugins=(
  dotenv
  git
  git-prompt
)

# MACHINE SPECIFIC STUFF - DO BEFORE SOURCING oh-my-zsh SO PLUGINS CAN BE INCLUDED
[ -s "$PROJECTS/ryan-zsh/machines/$HOST.zsh" ] && . "$PROJECTS/ryan-zsh/machines/$HOST.zsh"

# SOURCE oz-my-zsh
source $ZSH/oh-my-zsh.sh

# FUNCTIONS
cdp()
{
    cd $PROJECTS/$1
}
_cdp()
{
    compadd `ls $PROJECTS`
}
compdef _cdp cdp

# ALIASES
alias ip="ifconfig | grep broadcast | awk '{print \$6}'"

# NVM STUFF
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# SPLUNK STUFF
alias cds="cd /Applications/Splunk/bin"
