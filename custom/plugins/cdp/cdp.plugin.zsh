echo HI

cdp()
{
    cd $PROJECTS/$1
}
_cdp()
{
    compadd `ls $PROJECTS`
}
compdef _cdp cdp
