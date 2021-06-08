# PATH STUFF
export PROJECTS="$HOME/projects"
export PATH="$PATH:$PROJECTS/bin"
export PATH="$PATH:."
path=(
  /usr/local/{bin,sbin}
  $path[@]
)

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
  cdp
  temper
  idea
)

# MACHINE SPECIFIC STUFF - DO BEFORE SOURCING oh-my-zsh SO PLUGINS CAN BE INCLUDED
[ -s "$PROJECTS/ryan-zsh/machines/$HOST.zsh" ] && . "$PROJECTS/ryan-zsh/machines/$HOST.zsh"
[ -s "$HOME/.secrets" ] && . "$HOME/.secrets"

# SOURCE oz-my-zsh
source $ZSH/oh-my-zsh.sh

# ALIASES
alias ip="ifconfig | grep broadcast | awk '{print \$6}'"

# NVM STUFF
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
