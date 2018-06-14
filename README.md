
# Use github to sync tmux config
**NOTE**: This repo was forked from [tony/tmux-config](https://github.com/tony/tmux-config) and I made adaptation
- [Tmux](https://github.com/tmux/tmux) version should be higher than 1.5
- `<prefix>` changed to <kbd>Ctrl</kbd> + <kbd>a</kbd> because vim use <kbd>Ctrl</kbd> + <kbd>b</kbd>
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


## Keymaps
Our prefix/leader key is <kbd>Ctrl</kbd> + <kbd>a</kbd> now (just like the `screen` multiplexer). This sequence must be typed before any tmux shortcut.

| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>?</kbd> | bring up list of keyboard shortcuts |
| `<prefix>` + <kbd>?</kbd> | bring up list of keyboard shortcuts |
| `<prefix>` + <kbd>Space></kbd> | to change pane arrangement |
| `<prefix>` + <kbd>o</kbd> | to rotate panes |
| `<prefix>` + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>  | to move left/down/up/right. Respectively. (vim hjkl)
| `<prefix>` + <kbd>;</kbd> | to go to last panel |

For session:

| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>:</kbd>  + type `new` + <kbd>enter</kbd> | new session |
| `<prefix>` + <kbd>s</kbd> | list sessions |
| `<prefix>` + <kbd>$</kbd> | name session |

For window:

| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>c</kbd> | create a new window |
| `<prefix>` + <kbd>,</kbd> | rename current window |
| `<prefix>` + <kbd>n</kbd> | next window |
| `<prefix>` + <kbd>p</kbd> | previous window |
| `<prefix>` + <kbd>0</kbd> ~ <kbd>9</kbd> | move to window number `0` ~ `9` |
| `<prefix>` + <kbd>&</kbd> | kill window |
| `<prefix>` + <kbd>m</kbd> | switch to `main-horizontal` layout with the main window at 60% height|
| `<prefix>` + <kbd>-</kbd> | split current window horizontally |
| `<prefix>` + <kbd>\|</kbd> | split current window vertically |



## Other
* LICENSE: MIT
