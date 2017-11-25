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
fi
if [ ! -z "$lflag" ]; then
    printf "Option -l specified: %s\n" "$layout_name"
fi

shift $(($OPTIND - 1))
printf "Remaining arguments are: %s\n" "$*"
