#!/usr/bin/env python

"""
Basic CPU & Memory Usage for Tmux

Author: Zaiste! <oh@zaiste.net>

Dash-meter inspired by tmux-mem-cpu
and code from psutil top.py.

From https://github.com/zaiste/tmuxified

Changes by Tony Narlock <tony@git-pull.com> at
https://github.com/tony/tmux-config.
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
    if hasattr(mem, 'cached'):
        memused = mem.used - mem.cached
    else:
        memused = mem.used

    cpu_dashes, cpu_empty_dashes = get_dashes(psutil.cpu_percent(interval=0.1))
    line = "%s/%sMB [%s%s] %5s%%" % (
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
