#!/bin/sh

lflag=
pflag=
tflag=
while getopts l:p:t: name
do
    case $name in
    l)    lflag=1
	  layout_name=$OPTARG;;
    p)    pflag=1
          percentage="$OPTARG";;
    t)    tflag=1
          target="$OPTARG";;
    ?)   printf "Usage: %s: [-l layout-name] [-p percentage] [-t target]\n" $0
          exit 2;;
    esac
done
if [ ! -z "$tflag" ]; then
    printf "Option -t specified: %s\n" "$target"
fi
if [ ! -z "$pflag" ]; then
    printf "Option -p specified: %s\n" "$percentage"
    intre='^[0-9]+$'
    if ! [[ $percentage =~ $intre ]] ; then
        printf "Percentage (-p) must be an integer" >&2
        exit 1
    fi
fi
if [ ! -z "$lflag" ]; then
    printf "Option -l specified: %s\n" "$layout_name"
    if [[ $layout_name != 'main-horizontal' ]] && [[ $layout_name != 'main-vertical' ]] ; then
        printf "layout name must be main-horizontal or main-vertical" >&2
        exit 1
    fi
fi

shift $(($OPTIND - 1))
printf "Remaining arguments are: %s\n" "$*"
