#####################################################
# file name:    tmux.conf_howchen
# author:       chenhow1985<at>gmail<dot>com
#
# this shell is used for initialize the tmux-config
#####################################################

#!/bin/bash

if [ -d ~/.tmux  ]
then
    echo ".tmux already exist, backup it"
    mv ~/.tmux ~/.tmux.bak
fi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [ -e ~/.tmux.conf  ]
then
    echo ".tmux.conf already exist, backup it"
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi

ln -s ~/.my_config/tmux/tmux.conf ~/.tmux.conf

tmux source-file ~/.tmux.conf

