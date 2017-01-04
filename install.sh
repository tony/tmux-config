#!/bin/bash

trap exit ERR
mkdir ~/.tmux
ln -s ./.tmux-osx.conf  ~/.tmux/.tmux-osx.conf
ln -s ./.tmux.conf  ~/.tmux/.tmux.conf
ln -s ./vendor ~/.tmux/vendor

ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

cd ~/.tmux && git submodule init && git submodule update

cd ~/.tmux/vendor/tmux-mem-cpu-load && cmake . && make && sudo make install

tmux source-file ~/.tmux.conf
