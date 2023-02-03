#!/bin/bash

#mkdir ~/.dircolors
#git clone https://github.com/gibbling666/dircolors.git ~/.dircolors
#
#

function install_soft_for_mac() {
	brew install coreutils
	brew install go@1.17
	brew insatll go
	brew install neovim
	brew install node
	brew install tmux
	brew install global
	brew install trash
	brew install python3
	#brew install watchman
	brew install pyenv
	brew install wget
	brew install ag
	brew install rg
	brew install shellcheck
	brew install istioctl
	brew install skopeo
}

arch=$(uname)

if [ "$arch" == "Darwin" ]; then
	install_soft_for_mac
fi


root_path=$HOME
config_root=$root_path/.config
current_path=$(pwd)

# create dir if not exist.
if [ ! -d  "$config_root" ]; then
	echo "$config_root not exist, initing..."
	mkdir -p "$config_root"
fi


dirs=(nvim alacritty)
for dir in "${dirs[@]}"
do
	if [ -d "$config_root"/"$dir" ]; then 
		rm -rf "${config_root:?}"/"$dir"
	fi
	ln -s "${current_path}"/"${dir}" "${config_root}"/"$dir"
done
