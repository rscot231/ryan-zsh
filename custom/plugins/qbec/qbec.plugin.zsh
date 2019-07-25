function _qbec {
  local line state context state_descr

  _arguments \
    "-c:::_componentList" \
    "1: :(apply component diff help param show validate version)" \
    "2: :_arg2" \
    "3: :_arg3" \
    "4: :_arg4" \
    "*::arg:->args"
}

function _arg2 {
  case $line[1] in
    apply)
      _clusterList
    ;;
    diff)
      _clusterList
    ;;
    component)
      compadd diff list
    ;;
    show)
      _clusterList
    ;;
    validate)
      _clusterList
    ;;
  esac
}

function _arg3 {
  case $line[1] in
    component)
      _clusterList
    ;;
  esac
}

function _arg4 {
  case $line[1] in
    component)
      _clusterList
    ;;
  esac
}

function _clusterList {
  if [ -d ./environments ]; then
    compadd `find "./environments" -maxdepth 1 | xargs -n 1 basename -s .libsonnet`
  fi
}

function _componentList {
  if [ -d ./components ]; then
    compadd `ls ./components/*.jsonnet | xargs -n 1 basename | cut -d'.' -f1`
  fi
}

compdef _qbec qbec
