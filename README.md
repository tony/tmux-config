# Tony Narlock's tmux configuration

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com

[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

Installation
------------

  * `git clone https://github.com/tony/tmux-config.git ~/.tmux-tony`
  * `ln -s ~/.tmux-tony/.tmux.conf ~/.scrotwm.conf`
  * `cd ~/.tmux-tony`
  * `cmake .`
  * `make`
  * `sudo make install`
  * `tmux`

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