# .files

These are my dotfiles. Take anything you want, but at your own risk.

## Highlights

- Minimal efforts to install everything, using a [Makefile](./Makefile)
- Fast and colored prompt

## Installation

This will clone or download this repo to `~/.dotfiles` (depending on the availability of `git`, `curl` or `wget`).

1. Clone manually into the desired location:

```bash
git clone https://github.com/webpro/dotfiles.git ~/.dotfiles
```

Use the [Makefile](./Makefile) to install the [packages listed above](#packages-overview), and symlink
[runcom](./runcom) and [config](./config) files (using [stow](https://www.gnu.org/software/stow/)):

```bash
cd ~/.dotfiles
make
```
## Packages Overview

- [Node.js + npm LTS](https://nodejs.org/en/download/) (packages: [npmfile](./install/npmfile))
- Latest Git, Bash, Python, GNU coreutils, curl, Ruby
- `$EDITOR` (and Git editor) is [GNU nano](https://www.nano-editor.org)

## Installation

## The `dotfiles` command

```
$ dot help
Usage: dot <command>

Commands:
    clean            Clean up caches (brew, npm, gem, rvm)
    edit             Open dotfiles in IDE (code) and Git GUI (stree)
    help             This help message
    test             Run tests
    update           Alias for topgrade
```

## Customize

To customize the dotfiles to your likings, fork it and make sure to modify the locations above to your fork.

## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io).