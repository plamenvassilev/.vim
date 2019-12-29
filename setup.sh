#!/bin/bash

__DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

git clone https://github.com/plamenvassilev/vim.git $__DIR/vim.git
ln -s "{$__DIR}/.vim/vimrc" ~/.vim/vimrc
