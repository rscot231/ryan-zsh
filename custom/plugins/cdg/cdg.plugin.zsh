cdg()
{
    cd $GOPATH/src/$1
}
_cdg()
{
    compadd `ls $GOPATH/src`
}
compdef _cdg cdg
