# Another Dotfile setup

My current basic dotfile setup


clone onto you system

```
git clone https://github.com/amkirwan/dotfiles
```

Follow the instructions to install RCM on your system
[Install rcm:](https://github.com/thoughtbot/rcm)


Install the dotfiles:

```
env RCRC=$HOME/dotfiles/rcrc rcup
```

Run rcup after pulling a new version of the repository to symlink any new files in the repository

```
rcup
```

### Vim

Manage vim plugins with [vim-plug](https://github.com/junegunn/vim-plug)

Reload `.vimrc` open Vim and `:PlugInstall` to install plugins.
