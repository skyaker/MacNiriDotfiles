#!/usr/bin/env bash

set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

sudo pacman -S --needed - < "$script_dir/pacman.txt"

if command -v yay >/dev/null 2>&1; then
    aur_helper=yay
elif command -v paru >/dev/null 2>&1; then
    aur_helper=paru
else
    printf 'Official packages installed. Install yay or paru, then run:\n  %s -S --needed - < %s/aur.txt\n' "<aur-helper>" "$script_dir"
    exit 0
fi

"$aur_helper" -S --needed - < "$script_dir/aur.txt"
