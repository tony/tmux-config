[tmux](https://github.com/tmux/tmux) is a terminal multiplexer.

- Requires tmux 3.4+.
- Support for [tmux-mem-cpu-load](http://github.com/thewtex/tmux-mem-cpu-load).
- Prefix mapped to Ctrl-A for `screen` users.

New to tmux? [_The Tao of tmux_](https://leanpub.com/the-tao-of-tmux) is now available on Leanpub
and [Amazon Kindle](http://amzn.to/2gPfRhC). Read and browse the book for
[on the web](https://leanpub.com/the-tao-of-tmux/read).

Want more tmux? Check out the [libtmux](https://github.com/tony/libtmux) python library for
controlling tmux, and load your code projects via YAML/JSON with
[tmuxp](https://github.com/tony/tmuxp).

## Share your .dot-configs

Have a tmux configuration you'd like to share? Whether a fork of this project, another's, or your
own, submit it to [awesome-tmux-configs](https://github.com/tony/awesome-tmux-configs).

## Installation

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

## Stats

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

Make `_build` directory and `cd` into it:

```bash
mkdir _build; cd _build
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

### Powerline (Advanced)

You can add suport for [powerline](https://github.com/powerline/powerline) by adding these to your
`~/.tmux.conf`. Be sure to grab and install [powerline-fonts](https://github.com/powerline/fonts)
for your system.

See [Powerline on ReadTheDocs.org](https://powerline.readthedocs.org/en/master/) for more info.

## Start tmux

To start a session:

`tmux`

To reattach a previous session:

`tmux attach`

To reload config file

`<Control + a>:` then `source-file ~/.tmux.conf`

## Commands

Our prefix/leader key is `Control + a` now (just like the `screen` multiplexer). This sequence must
be typed before any tmux shortcut.

- `Control + a` before any command
- `Control + a` then `?` to bring up list of keyboard shortcuts (with descriptions)
- `Control + a` then `"` to split window horizontally
- `Control + a` then `v` to split window vertically
- `Control + a` then `<Space>` to open quick-action menu
- `Control + a` then `o` to rotate panes
- `Control + a` then `h`, `j`, `k`, `l` to move left, down, up, right (vim hjkl)
- `Control + a` then `;` to go to last panel

Beyond your first window:

- `Control + a` then `c` to create a new window
- `Control + a` then `n` to next window
- `Control + a` then `p` to previous window
- `Control + a` then `[0-9]` move to window number
- `Control + a` then `&` to kill window

Custom:

- `Control + a` then `m` to switch to `main-horizontal` layout with the main pane at 66% height.
- `Control + a` then `M` to switch to `main-vertical` layout with the main pane at 50% width.
- `Control + a` then `t` to open a popup shell (80% of screen).
- `Control + a` then `g` to open a popup with `git log --oneline --graph`.

## More configs / Tools

- _Save / Load your tmux workspaces through JSON or YAML_ with
  [tmuxp](https://github.com/tony/tmuxp).
- _Clone + Synchronize your git / hg / svn projects through JSON / YAML_ with
  [vcspull](https://github.com/tony/vcspull).
- _Modular, Lazy-loading vim configuration_ with support for C, C++, Python, Go and Javascript with
  [tony/vim-config](https://github.com/tony/vim-config)
- _Modular dot-config example_ [tony/.dot-config](https://github.com/tony/.dot-config)

## Other

- Github: http://www.github.com/tony
- Website: http://www.git-pull.com
- LICENSE: MIT
- Author: Tony Narlock (tony@git-pull.com)
