cdg()
{
    cd $GOPATH/src/$1
}
_cdg()
{
    compadd -M 'r:|[/]=** r:|=*' `pushd $GOPATH/src > /dev/null && find . -type d -exec test -e '{}/.git' ';' -print -prune | cut -c 3- && popd > /dev/null`
}
compdef _cdg cdg
