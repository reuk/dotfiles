#!/bin/sh
ln -s $PWD/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config/nvim
ln -s $PWD/init.vim ~/.config/nvim/init.vim
