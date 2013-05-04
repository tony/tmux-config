#!/usr/bin/env python

"""
Basic CPU & Memory Usage for Tmux

Author: Zaiste! <oh@zaiste.net>

Dash-meter inspired by tmux-mem-cpu
and code from psutil top.py.

From https://github.com/zaiste/tmuxified
"""

import os
import sys
if os.name != 'posix':
        sys.exit('platform not supported')
import psutil


def get_dashes(perc):
    dashes = "|" * int((float(perc) / 10))
    empty_dashes = " " * (10 - len(dashes))
    return dashes, empty_dashes


def info():
    mem = psutil.virtual_memory()
    memused = mem.used - mem.cached

    cpu_dashes, cpu_empty_dashes = get_dashes(psutil.cpu_percent(interval=0.1))
    line = "%s/%sMB [%s%s] %s%%" % (
        str(int(memused / 1024 / 1024)),
        str(int(mem.total / 1024 / 1024)),
        cpu_dashes, cpu_empty_dashes,
        psutil.cpu_percent(interval=0.1),
    )

    return line


def main():
    try:
        print info()
    except (KeyboardInterrupt, SystemExit):
        pass

if __name__ == '__main__':
    main()
