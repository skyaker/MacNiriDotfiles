# Arch

Run from the repository root:

```sh
./arch/packages/install.sh
git clone https://aur.archlinux.org/yay.git /tmp/yay
(cd /tmp/yay && makepkg -si)
./arch/packages/install.sh
make -C arch install
ln -sfn "$PWD/.zshrc" ~/.zshrc
ln -sfn "$PWD/.tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Open tmux and press `Ctrl+a`, then `I`.
