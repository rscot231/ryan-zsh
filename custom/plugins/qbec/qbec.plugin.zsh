if [ -z "$QBEC_ROOT" ]; then
  echo "QBEC_ROOT not set. Either set QBEC_ROOT or remove the qbec plugin."
fi

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
  compadd `find "$QBEC_ROOT/environments" -maxdepth 1 -type d | xargs -n 1 basename`
}

function _componentList {
  compadd `ls $QBEC_ROOT/components/*.jsonnet | xargs -n 1 basename | cut -d'.' -f1`
}

compdef _qbec qbec
