#!/usr/bin/env bash

if [ ! -d "~/.vim/pack/plugins/start" ]; then
	mkdir -p "~/.vim/pack/plugins/start"
fi

git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
