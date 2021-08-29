#!/usr/bin/env bash

__plugins="~/.vim/pack/plugins/start"
__vim_go="~/.vim/pack/plugins/start/vim-go"

if [ ! -d "$__plugins" ]; then
	mkdir -p "$__plugins"
fi

if [ -d "$__vim_go" ]; then
	echo "vim-go alrady installed"
	cd $__vim_go && git pull
    else
       	git clone https://github.com/fatih/vim-go.git "$__vim_go"
fi
