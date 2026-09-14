# Packages

```sh
./arch/packages/install.sh
git clone https://aur.archlinux.org/yay.git /tmp/yay
(cd /tmp/yay && makepkg -si)
./arch/packages/install.sh
```

After installing or removing packages:

```sh
./arch/packages/refresh.sh
```
