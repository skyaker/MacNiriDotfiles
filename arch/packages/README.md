# Arch package manifest

`pacman.txt` contains explicitly installed packages from the official Arch
repositories. `aur.txt` contains explicitly installed foreign (AUR) packages.
Dependencies are intentionally excluded.

Refresh the manifests after installing or removing software:

```sh
./arch/packages/refresh.sh
```

On a new system, install the official packages first:

```sh
./arch/packages/install.sh
```

If no AUR helper is installed, the script stops after the official packages.
Install `yay` or `paru`, then run it again to install the AUR packages. Helpers
are deliberately excluded from `aur.txt` because they cannot install themselves.
