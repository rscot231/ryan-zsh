temper()
{
    if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <temp link file>"
        return
    fi

    echo "Setting up $1. ctrl+c to stop."
    ~/.temper/$1.sh
    trap "echo; echo Cleaning up $1; ~/.temper/$1.cleanup.sh; trap - INT; return;" INT
    while true; do sleep 5; done
}
_temper()
{
    if [ -d ~/.temper ]; then
        compadd `find $HOME/.temper/*.sh -maxdepth 1 | grep -v .cleanup.sh | xargs -n 1 basename -s .sh`
    fi
}
compdef _temper temper
