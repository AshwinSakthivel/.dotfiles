#!/bin/bash
#script's output
LOG_FILE="linuxsetup.log"
#OS type
if [[ $(uname) != "Linux" ]]; then
    echo "Error: This script only runs on Linux!" >> $LOG_FILE
    exit 1
fi
#.TRASH directory
mkdir -p ~/.TRASH
#Backup existing .nanorc
if [[ -f ~/.nanorc ]]; then
    mv ~/.nanorc ~/.bup_nano
    echo "Renamed .nanorc to .bup_nano" >> $LOG_FILE
fi
#.nanorc
cp ~/.dotfiles/etc/nanorc ~/.nanorc
 bashrc line
if ! grep -Fxq "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then
    echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

