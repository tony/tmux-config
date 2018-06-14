**NOTE**: This repo was forked from [tony/tmux-config](https://github.com/tony/tmux-config) and I made adaptation
- [Tmux](https://github.com/tmux/tmux) version should be higher than 1.5
- Prefix mapped to `Ctrl-a` for `screen` users
- Use [tpm](https://github.com/tmux-plugins/tpm) to manage tmux plug-in, already integrated:
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): 
  Restore `tmux` environment after system restart
  - [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum): 
  `tmux` environment will be saved at the interval of 15 minutes. All the saving happens in the background without the impact to your workflow
  - [tmux-mem-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load): 
  A simple, lightweight program provided for system monitoring in the status line of `tmux`

Installation
------------

  Download:

```bash
git clone https://github.com/howhow/tmux-config ~/.my_config/tmux
```

  Copy tmux config to home:

```bash
ln -s ~/.my_config/tmux/.tmux.conf ~/.tmux.conf
```

Start tmux
----------

To start a session:

`tmux`


Commands
--------

Our prefix/leader key is `Control + a` now (just like the `screen` multiplexer). This sequence must be typed before any tmux shortcut.

* `Control + a` before any command
* `Control + a` then `?` to bring up list of keyboard shortcuts
* `Control + a` then `"` to split window
* `Control + a` then `<Space>` to change pane arrangement
* `Control + a` then `o` to rotate panes
* `Control + a` then `h`, `j`, `k`, `l` to move left, down, up, right. Respectively. (vim hjkl)
* `Control + a` then `;` to go to last panel

Beyond your first window:

* `Control + a` then `c` to create a new window
* `Control + a` then `n` to next window
* `Control + a` then `p` to previous window
* `Control + a` then `[0-9]` move to window number
* `Control + a` then `&` to kill window

Custom:

* `Control + a` then `m` to switch to ``main-horizontal`` layout with the main window at 60% height.


Other
-----
* LICENSE: MIT
