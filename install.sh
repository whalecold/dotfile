#!/bin/bash

#brew install coreutils
#mkdir ~/.dircolors
#git clone https://github.com/gibbling666/dircolors.git ~/.dircolors
#
#brew install go@1.17
#brew insatll go
#brew install neovim
#brew install node
#brew install tmux
#brew install global
#brew install trash
#brew install python3
##brew install watchman
#brew install pyenv
#brew install wget
#brew install ag
#brew install rg
#
#

root_path=$HOME
config_root=$root_path/.config
current_path=`pwd`

files=(nvim alacritty)
for file in ${files[@]}
do
	echo "ln -s $current_path/$file $config_root/$file"
done
