[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer. Tested with tmux 1.5 and 1.6.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

Prefix mapped to Ctrl-A for `screen` users.

Installation
------------

  Download:

```bash
git clone https://github.com/tony/tmux-config.git ~/.tmux
```

  Copy tmux config to home:

```bash
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
```

  Go to config dir:

```bash
cd ~/.tmux
```

Stats
-----

### tmux-mem-cpu-load

(Linux-only)

  Prep ourself to download submodule:

```bash
git submodule init
```

  Download submodule:

```bash
git submodule update
```

  Change dir to tmux-mem-cpu-load:

```bash
cd ~/.tmux/vendor/tmux-mem-cpu-load
```

  General make file:

```bash
cmake .
```

  Compile our binary:

```bash
make
```

  Install our binary to `/usr/local/bin/tmux-mem-cpu-load`:

```bash
sudo make install
```

  Go home:

```bash
cd ~
```

  Launch tmux:
```
tmux
```
  And press `Control + a` then `d` to go back to the terminal.

  Update config:

```bash
tmux source-file ~/.tmux.conf
```

### basic-cpu-and-memory.tmux

(Cross platform, tested with python 2.7+)

Update March 19, 2014. Works with psutil 2.0 now.

  install ``psutil``

```bash
sudo pip install psutil
```

  copy ``~/.tmux/vendor/basic-cpu-and-memory.tmux`` to bin

```bash
sudo cp ~/.tmux/vendor/basic-cpu-and-memory.tmux /usr/local/bin/tmux-mem-cpu-load
```

  make executable

```bash
sudo chmod +x /usr/local/bin/tmux-mem-cpu-load
```

Start tmux
----------

  To start a session:

  `tmux`

  To reattach a previous session:

  `tmux attach`

  To reload config file

  `<Control + b>:` (which could Ctrl-B or Ctrl-A if you overidden it) then `source-file ~/.tmux.conf`

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


by Tony Narlock (tony@git-pull.com)

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com
