[tmux](http://tmux.sourceforge.net/) is a terminal multiplexer.

- Tested with tmux 1.5+.
- Support for [tmux-mem-cpu-load](http://github.com/thewtex/tmux-mem-cpu-load).
- Prefix mapped to Ctrl-A for `screen` users.

New to tmux? [*The Tao of tmux*](https://leanpub.com/the-tao-of-tmux) is now available on Leanpub and [Amazon Kindle](http://amzn.to/2gPfRhC). Read and browse the book for [on the web](https://leanpub.com/the-tao-of-tmux/read).

Want more tmux? Check out the [libtmux](https://github.com/tony/libtmux) python library for controlling tmux, and load your code projects via YAML/JSON with [tmuxp](https://github.com/tony/tmuxp).

Installation
------------

  Download:

```bash
git clone --recursive https://github.com/tony/tmux-config.git ~/.tmux
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

Works on Linux and OS X.

Prep ourself to download submodule (if you forgot `--recursive` when cloning):

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

Make ___build directory and `cd` into it:

```bash
mkdir build; cd build
```

General make file:

```bash
cmake ..
```

Compile binary:

```bash
make
```

Install our binary to `/usr/local/bin/tmux-mem-cpu-load`:

```bash
sudo make install
```

(No need to do `sudo` if on OS X / macOS)

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

Install ``psutil``:

```bash
sudo pip install psutil
```

Copy ``~/.tmux/vendor/basic-cpu-and-memory.tmux`` to bin:

```bash
sudo cp ~/.tmux/vendor/basic-cpu-and-memory.tmux /usr/local/bin/tmux-mem-cpu-load
```

make executable:
```bash
sudo chmod +x /usr/local/bin/tmux-mem-cpu-load
```

### Powerline (Advanced)

You can add suport for [powerline](https://github.com/powerline/powerline) by adding these
to your ``~/.tmux.conf``. Be sure to grab and install [powerline-fonts](https://github.com/powerline/fonts)
for your system.

See [Powerline on ReadTheDocs.org](https://powerline.readthedocs.org/en/master/) for more info.

```
# pip install --user git+git://github.com/powerline/powerline
if-shell 'test -f ~/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf' 'source-file ~/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf'

# [sudo] pip install git+git://github.com/powerline/powerline
if-shell 'test -f /usr/local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf' 'source-file /usr/local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf'

# [sudo] pip install git+git://github.com/powerline/powerline
if-shell 'test -f /usr/local/lib/python2.7/dist-packages/powerline/bindings/tmux/powerline.conf' 'source-file /usr/local/lib/python2.7/dist-packages/powerline/bindings/tmux/powerline.conf'
# python 3.3 ?
if-shell 'test -f /usr/local/lib/python3.3/dist-packages/powerline/bindings/tmux/powerline.conf' 'source-file /usr/local/lib/python3.3/dist-packages/powerline/bindings/tmux/powerline.conf'
# python 3.4 ?
# if-shell 'test -f /usr/local/lib/python3.4/dist-packages/powerline/bindings/tmux/powerline.conf' 'source-file /usr/local/lib/python3.4/dist-packages/powerline/bindings/tmux/powerline.conf'
# python 3.5 ?
# if-shell 'test -f /usr/local/lib/python3.5/dist-packages/powerline/bindings/tmux/powerline.conf' 'source-file /usr/local/lib/python3.5/dist-packages/powerline/bindings/tmux/powerline.conf'
# python 3.6 ?
# if-shell 'test -f /usr/local/lib/python3.6/dist-packages/powerline/bindings/tmux/powerline.conf' 'source-file /usr/local/lib/python3.6/dist-packages/powerline/bindings/tmux/powerline.conf'
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

Custom:

* `Control + a` then `m` to switch to ``main-horizontal`` layout with the main window at 60% height.

More configs / Tools
--------------------

* *Save / Load your tmux workspaces through JSON or YAML* with [tmuxp](https://github.com/tony/tmuxp).
* *Clone + Synchronize your git / hg / svn projects through JSON / YAML* with [vcspull](https://github.com/tony/vcspull).
* *Modular, Lazy-loading vim configuration* with support for C, C++, Python, Go and Javascript with [tony/vim-config](https://github.com/tony/vim-config)
* *Modular dot-config example* [tony/.dot-config](https://github.com/tony/.dot-config)

Other
-----

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com
* LICENSE: MIT
* Author: Tony Narlock (tony@git-pull.com)
