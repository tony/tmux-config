# Author arthurkiller
# email arthur-lee@qq.com
# data 2017-1-4
# this shell is used for initialize the tmux-config

#!/bin/bash

trap exit ERR
if [ -d $HOME/.tmux  ]
then
    echo .tmux already exist
    mv $HOME/.tmux $HOME/.tmux.bak
fi

if [ -e $HOME/.tmux.conf  ]
then
    echo .tmux.conf already exist
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi

cp -r $HOME/tmux-config $HOME/.tmux
ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf

cd ~/.tmux && git submodule init && git submodule update

cd ~/.tmux/vendor/tmux-mem-cpu-load && cmake . && make && sudo make install

tmux source-file ~/.tmux.conf
