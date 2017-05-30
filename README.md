tmuxvm -- Tmux Version Manager
==============================


Installation
-------------

Execute the installer.

```
$ curl -L https://raw.githubusercontent.com/greymd/tmuxvm/master/install.sh | sh
```

Edit `~/.bashrc` or `~/.zshrc` and add this line.

```
[ -e "$HOME/.config/tmuxvm/bin" ] && export PATH="$HOME/.config/tmuxvm/bin:$PATH"
```

Usage
-------------

```
$ tmuxvm --help
Usage:
tmuxvm [SUBCOMMANDS]

SUBCOMMANDS:
  --help            -- Show this help.
  switch [VERSION]  -- Change version.
  version           -- Show current version.
  versions          -- Show installed versions.
  install [VERSION] -- Install specified version.
  remove [VERSION]  -- Remove specified version.
  list [update]     -- Show available VERSION. Or update the list.
```

Example
-------------

```
$ tmuxvm list
  2.5
  2.4
  2.3
  2.2
  2.1
  2.0
  1.9a
  1.9
  1.8
  1.7
  1.6
  1.5
  1.4
  1.3
  1.2
  1.1
  1.0
  0.9
  0.8
```

Install tmux version 2.4

```
$ tmuxvm install 2.4
# Installation will start...
...
**Installation is successfully completed.**

$ tmux -V
tmux 2.4

$ tmuxvm version
2.4 (set by ~/.config/tmuxvm/bin/tmux)

$ tmuxvm switch 2.1

$ tmux -V
tmux 2.1
```


Uninstallation
-------------

Remove `~/.config/tmuxvm` directory

```
$ rm -rf ~/.config/tmuxvm
```

Edit `~/.bashrc` or `~/.zshrc` and remove this line.

```
[ -e "$HOME/.config/tmuxvm/bin" ] && export PATH="$HOME/.config/tmuxvm/bin:$PATH"
```
