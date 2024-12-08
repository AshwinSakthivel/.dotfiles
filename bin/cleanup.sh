#!/bin/bash
#.nanorc file
rm -f ~/.nanorc
#bashrc 
sed -i '' '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc
#.TRASH directory
rm -rf ~/.TRASH

