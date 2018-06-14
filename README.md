
# Use github to sync tmux config
**NOTE**: This repo was forked from [tony/tmux-config](https://github.com/tony/tmux-config) and I made adaptation
- [Tmux](https://github.com/tmux/tmux) version should be higher than 1.5
- `<prefix>` mapped to <kbd>Ctrl</kbd> + <kbd>a</kbd> for `screen` users
- Use [tpm](https://github.com/tmux-plugins/tpm) to manage tmux plug-in, already integrated:
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): 
  Restore `tmux` environment after system restart
  - [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum): 
  `tmux` environment will be saved at the interval of 15 minutes. All the saving happens in the background without the impact to your workflow
  - [tmux-mem-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load): 
  A simple, lightweight program provided for system monitoring in the status line of `tmux`

## Installation
Download:
```bash
git clone https://github.com/howhow/tmux-config ~/.my_config/tmux
```

Copy tmux config to home:
```bash
ln -s ~/.my_config/tmux/.tmux.conf ~/.tmux.conf
```

## Start tmux
1. type `tmux` in terminal
2. Press `<prefix>` + <kbd>I</kbd> (capital I, as in **I**nstall) to fetch the plugin.

You're good to go! The plugin was cloned to `~/.tmux/plugins/` dir and sourced.


## Commands
Our prefix/leader key is <kbd>Ctrl</kbd> + <kbd>a</kbd> now (just like the `screen` multiplexer). This sequence must be typed before any tmux shortcut.

| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>?</kbd> | bring up list of keyboard shortcuts |
| `<prefix>` + <kbd>?</kbd> | bring up list of keyboard shortcuts |
| `<prefix>` + <kbd>"</kbd> | to split window |
| `<prefix>` + <kbd>Space></kbd> | to change pane arrangement |
| `<prefix>` + <kbd>o</kbd> | to rotate panes |
| `<prefix>` + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>  | to move left/down/up/right. Respectively. (vim hjkl)
| `<prefix>` + <kbd>;</kbd> | to go to last panel |

Beyond your first window:

* `Control + a` then `c` to create a new window
* `Control + a` then `n` to next window
* `Control + a` then `p` to previous window
* `Control + a` then `[0-9]` move to window number
* `Control + a` then `&` to kill window

Custom:

* `Control + a` then `m` to switch to ``main-horizontal`` layout with the main window at 60% height.


## Other
* LICENSE: MIT
