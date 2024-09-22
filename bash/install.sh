#!/bin/bash

# include .bash_customizations in .bashrc
cp .bash_customizations ~/
cp ~/.bashrc ~/.bashrc.bak
cat << EOL >> ~/.bashrc

# user customizations
if [ -f ~/.bash_customizations ]; then
    . ~/.bash_customizations
fi
EOL
