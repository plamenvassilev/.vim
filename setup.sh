#!/usr/bin/env bash

__plugins="$HOME/.vim/pack/plugins/start"
__vim_go="$HOME/.vim/pack/plugins/start/vim-go"
__theme_dir="$HOME/.vim/pack/mycolors/opt"
__dist_plugins="$HOME/.vim/pack/dist/start"

declare -A themes
themes+=(
["gruvbox"]="https://github.com/morhetz/gruvbox.git"
#[""]=""
)

declare -A dist_plugins
dist_plugins+=(
["nerdtree"]="https://github.com/scrooloose/nerdtree.git"
["vim-airline"]="https://github.com/vim-airline/vim-airline"
["vim-fugitive"]="https://github.com/tpope/vim-fugitive.git"
)

if [ ! -d "$__plugins" ]; then
	mkdir -p "$__plugins"
fi

if [ -d "$__vim_go" ]; then
	echo "vim-go alrady installed, checking for update."
	cd $__vim_go && git pull
    else
       git clone https://github.com/fatih/vim-go.git "$__vim_go"
fi

if [ ! -d "$__theme_dir" ]; then
    mkdir -p "$__theme_dir"
fi

for key in "${!themes[@]}"; do
	if [ ! -d "${__theme_dir}/${key}" ]; then
		git clone ${themes[$key]} "${__theme_dir}/${key}"
	    else
		echo "Check $key theme for update"
		cd "${__theme_dir}/${key}" && git pull
	fi
done

if [ ! -d "__dist_plugins" ]; then
    mkdir -p $__dist_plugins
fi


for key in "${!dist_plugins[@]}"; do
	if [ ! -d "${__dist_plugins}/${key}" ]; then
		git clone ${dist_plugins[$key]} "${__dist_plugins}/${key}"
	    else
		echo "Check $key plugin for update"
		cd "${__dist_plugins}/${key}" && git pull
	fi
done
