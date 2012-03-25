# Tony Narlock's tmux configuration

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com

[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

This sample tmux configuration should get you going.

Installation
------------

  Download:

```bash
git clone https://github.com/tony/tmux-config.git ~/.tmux-tony
```

  Copy tmux config to home:

```bash
ln -s ~/.tmux-tony/.tmux.conf ~/.tmux.conf
```

  Go to config dir:

```bash
cd ~/.tmux-tony
```

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
cd ~/.tmux-tony/vendor/tmux-mem-cpu-load
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

  Update config:

```bash
tmux source-file ~/.tmux.conf
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
