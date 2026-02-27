# dotfiles

Dotfiles managed via a bare git repo. Files stay in their original locations -- no symlinks needed.

## Tracked files

- `.tmux.conf` -- tmux configuration
- `.zshrc` -- zsh configuration

## Setup on a new machine

```bash
git clone --bare git@github.com:mrkvn/dotfiles.git ~/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

If `checkout` conflicts with existing files, back them up first then retry.

To make the alias permanent, add it to your shell config:

```bash
echo "alias dotfiles='git --git-dir=\$HOME/.dotfiles --work-tree=\$HOME'" >> ~/.zshrc
```

## Usage

```bash
# Check status
dotfiles status

# Add/update a dotfile
dotfiles add ~/.tmux.conf
dotfiles commit -m "Update tmux config"
dotfiles push

# Add a new dotfile
dotfiles add ~/.some-config
dotfiles commit -m "Add some-config"
dotfiles push
```
