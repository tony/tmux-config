# Tony Narlock's tmux configuration

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com

[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

This sample tmux configuration should get you going.

Installation
------------

  * `git clone https://github.com/tony/tmux-config.git ~/.tmux-tony` download
  * `ln -s ~/.tmux-tony/.tmux.conf ~/.tmux.conf` copy tmux config to home
  * `cd ~/.tmux-tony` cd to config
  * `git submodule init` setup
  * `git submodule update` download
  * `cd ~/.tmux-tony/vendor/tmux-mem-cpu-load` change dir to tmux-mem-cpu-load
  * `cmake .` general make file
  * `make` compile
  * `sudo make install` move our binary. it will be at `/usr/local/bin/tmux-mem-cpu-load`
  * `cd ~` go home
  * `tmux source-file ~/.tmux.conf` update config

  To start a session:

  `tmux`

  To reattach a previous session:

  `tmux attach`

  To reload config file

  `<prefix>:` (which is Ctrl-B or Ctrl-A if you overidden it) then `source-file ~/.tmux.conf`

Commands
--------

  * `Control + b` before any command
  * `Control + b` then `?` to bring up list of keyboard shortcuts
  * `Control + b` then `"` to split window
  * `Control + b` then `<Space>` to change pane arrangement
  * `Control + b` then `o` to rotate panes
  * `Control + b` then `;` to go to last panel


  Beyond your first window

  * `Control + b` then `c` to create a new window
  * `Control + b` then `n` to next window
  * `Control + b` then `p` to previous window
  * `Control + b` then `&` to kill window
