#!/bin/bash

# Author arthurkiller
# email arthur-lee@qq.com
# data 2017-1-4
# this shell is used for initialize the tmux-config

trap exit ERR
if [ -d ~/.tmux  ]
then
    echo .tmux already exist
    mv ~/.tmux ~/.tmux.bak
fi

if [ -e ~/.tmux.conf  ]
then
    echo .tmux.conf already exist
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi

cp -r . ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

pushd ~/.tmux && git submodule init && git submodule update

cd ~/.tmux/vendor/tmux-mem-cpu-load && cmake . && make && sudo make install

tmux source-file ~/.tmux.conf

popd
