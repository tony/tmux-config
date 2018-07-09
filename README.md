
# Use github to sync tmux config
**NOTE**: This repo was forked from [tony/tmux-config](https://github.com/tony/tmux-config) and I made adaptation
- [Tmux](https://github.com/tmux/tmux) version should be higher than 1.5
- `<prefix>` changed to <kbd>Ctrl</kbd> + <kbd>a</kbd> (because vim use <kbd>Ctrl</kbd> + <kbd>b</kbd>)
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
ln -s ~/.my_config/tmux/tmux.conf ~/.tmux.conf
```

## Start tmux
1. type `tmux` in terminal
2. Press `<prefix>` + <kbd>I</kbd> (capital I, as in **I**nstall) to fetch the plugin.

You're good to go! The plugin was cloned to `~/.tmux/plugins/` dir and sourced.

## Basic usage
1. list all session
```bash
tmux ls
```
2. create a new session
```bash
tmux new -s <session_name>
```
3. attach to a session
```bash
tmux attch -t <session_name>
```
4. kill a session
```bash
tmux kill-session -t <session_name>
```
5. kill all session
```bash
tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill
```

## Keymaps in this `tmux.config`
Our prefix/leader key is <kbd>Ctrl</kbd> + <kbd>a</kbd> now (just like the [screen](https://www.gnu.org/software/screen/) multiplexer). This sequence must be typed before any tmux shortcut. Some keymaps are customized, use `<prefix>` + <kbd>?</kbd> to bring up list of keyboard shortcuts

### For session
| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>:</kbd>  + type `new` + <kbd>enter</kbd> | new session |
| `<prefix>` + <kbd>s</kbd> | list sessions |
| `<prefix>` + <kbd>$</kbd> | name session |
| `<prefix>` + <kbd>d</kbd> | de-attach from session |

### For window
| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>w</kbd> | list window |
| `<prefix>` + <kbd>c</kbd> | create a new window |
| `<prefix>` + <kbd>,</kbd> | rename current window |
| `<prefix>` + <kbd>n</kbd> | next window |
| `<prefix>` + <kbd>p</kbd> | previous window |
| `<prefix>` + <kbd>f</kbd> | find window |
| `<prefix>` + <kbd>0</kbd> ~ <kbd>9</kbd> | move to window number `0` ~ `9` |
| `<prefix>` + <kbd>&</kbd> | kill window |

### For panel
| keymap | desc |
|--------|------|
| `<prefix>` + <kbd>-</kbd> | split current window horizontally |
| `<prefix>` + <kbd>\|</kbd> | split current window vertically |
| `<prefix>` + <kbd>q</kbd> | show panel number |
| `<prefix>` + <kbd>x</kbd> | kill a panel |
| `<prefix>` + <kbd>Space></kbd> | to change pane arrangement |
| `<prefix>` + <kbd>o</kbd> | to rotate panes |
| `<prefix>` + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>  | to move left/down/up/right. Respectively. (vim hjkl)
| `<prefix>` + <kbd>;</kbd> | to go to last panel |

### Copy-paste mode work flow
1. enter copy mode by `<prefix>` + <kbd>[</kbd> or scroll the mouse
2. move around text via <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd>
3. press <kbd>v</kbd> to start select word
4. <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> or other `vi` key-bind to select, like <kbd>e</kbd>
5. <kbd>y</kbd> to yank
6. exit copy mode by press <kbd>q</kbd>
7. `<prefix>` + <kbd>P</kbd> to paste

## Other
* LICENSE: MIT
