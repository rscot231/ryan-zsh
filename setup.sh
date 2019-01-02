#!/usr/local/bin/zsh

mv ~/.zshrc ~/.zshrc.bak
ln -s $(pwd)/.zshrc $HOME/.zshrc
. ~/.zshrc
