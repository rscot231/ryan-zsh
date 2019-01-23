# ZSH Theme - inspired by the lukerandall theme

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function _my_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_status)
  [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function _k8s_info() {
  if test -f $KUBECONFIG; then
    local k8s=$(grep current-context $KUBECONFIG | grep -v \"\" | awk '{print $2}')
    local ns=$(grep "name: $k8s" $KUBECONFIG -A2 -B2 | grep namespace | awk '{print $3}')
    echo "%{$fg_bold[cyan]%}k8s:($k8s:$ns)%{$reset_color%} "
  fi
}

local host_color=${HOST_COLOR:-green}
PROMPT='%{$fg_bold[$host_color]%}$HOST_PAD%n@%m$HOST_PAD%{$reset_color%} %{$fg_bold[yellow]%}$(pwd)%{$reset_color%} $(_k8s_info)$(_my_git_prompt_info)%{$reset_color%}%B
»%b '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"

