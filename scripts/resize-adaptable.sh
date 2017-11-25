#!/bin/sh
# Adaptable tmux resize script by percentage
#
# Layout types supported (-l):
#
# main-horizontal: top pane is main pane, panes split left to right on the bottom
# main-vertical: left pane is maine pane, right panes split top to bottom on the
#                right side
#
# Options:
# 
# -l layout-name (required): the name of the layout, "main-horizontal" or "main-vertical"
# -p percentage (required): an integer of the percentage of the client width/height to set
# -t target-window (optional): the tmux target for the window, can be an fnmatch(1) of the
#                              window name, index, or id
#
# Example usage:
#
# Case 1: Resize to a main-horizontal, main pane 66% of client height
# $ ./scripts/resize-adaptable.sh -p 66 -l main-horizontal
#
# Case 2: Same as Case 1, target "devel" window
# $ ./scripts/resize-adaptable.sh -p 66 -l main-horizontal -t devel
#
# Case 3: Resize to a main-horizontal, main pane half width
# $ ./scripts/resize-adaptable.sh -p 50 -l main-vertical
#
# Case 4: Same as Case 3, target "mywindow"
# $ ./scripts/resize-adaptable.sh -p 50 -l main-vertical -t mywindow
#
# Author: Tony Narlock
# Website: https://devel.tech
# License: MIT

lflag=
pflag=
tflag=
while getopts l:p:t: name;
do
    case $name in
    l)    lflag=1
	  layout_name=$OPTARG;;
    p)    pflag=1
          percentage="$OPTARG";;
    t)    tflag=1
          target="$OPTARG";;
    ?)   printf "Usage: %s: [-l layout-name] [-p percentage] [-t target-window]\n" $0
          exit 2;;
    esac
done

if [ ! -z "$pflag" ]; then
    if ! [ "$percentage" -eq "$percentage" ] 2> /dev/null; then
        printf "Percentage (-p) must be an integer" >&2
        exit 1
    fi
fi
if [ ! -z "$lflag" ]; then
    if [ $layout_name != 'main-horizontal' ] && [ $layout_name != 'main-vertical' ] ; then
        printf "layout name must be main-horizontal or main-vertical" >&2
        exit 1
    fi
fi

if [ "$layout_name" = "main-vertical" ]; then
    MAIN_PANE_SIZE=$(expr $(tmux display -p '#{window_width}') \* $percentage \/ 100)
    MAIN_SIZE_OPTION='main-pane-width'

fi

if [ "$layout_name" = "main-horizontal" ]; then
    MAIN_PANE_SIZE=$(expr $(tmux display -p '#{window_height}') \* $percentage \/ 100)
    MAIN_SIZE_OPTION='main-pane-height'
fi

if [ ! -z "$target" ]; then
    tmux setw -t $target $MAIN_SIZE_OPTION $MAIN_PANE_SIZE; tmux select-layout -t $target $layout_name
else
    tmux setw $MAIN_SIZE_OPTION $MAIN_PANE_SIZE; tmux select-layout $layout_name
fi

exit 0
