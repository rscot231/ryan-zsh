_ADDONS=$GOPATH/src/cd.splunkdev.com/kub/addons

q()
{
     pushd $_ADDONS &> /dev/null
     qbec "$@"
     popd &> /dev/null
}

function _q {
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
  compadd `find $_ADDONS/environments -depth 1 -type d | xargs -n 1 basename`
}

function _componentList {
  compadd `ls $_ADDONS/components/*.jsonnet | xargs -n 1 basename | cut -d'.' -f1`
}

compdef _q q
compdef _q qbec
