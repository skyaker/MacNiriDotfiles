# MacNiriDotfiles

## Arch

```sh
git clone git@github.com:skyaker/MacNiriDotfiles.git ~/dotfiles
cd ~/dotfiles
./arch/packages/install.sh
git clone https://aur.archlinux.org/yay.git /tmp/yay
(cd /tmp/yay && makepkg -si)
./arch/packages/install.sh
make -C arch install
ln -sfn "$PWD/.zshrc" ~/.zshrc
ln -sfn "$PWD/.tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
```

In tmux press `Ctrl+a`, then `I` to install plugins.

## macOS

```sh
git clone git@github.com:skyaker/MacNiriDotfiles.git ~/dotfiles
cd ~/dotfiles
brew bundle --file macos/Brewfile
./macos/install.sh
tmux
```

In tmux press `Ctrl+a`, then `I` to install plugins.
