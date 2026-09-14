#!/usr/bin/env bash

set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

pacman -Qqen > "$script_dir/pacman.txt"
# The helper is only a bootstrap tool; do not require it to install itself.
pacman -Qqem | { grep -vxE '^(yay|yay-debug|paru|paru-debug)$' || true; } > "$script_dir/aur.txt"

printf 'Package manifests refreshed.\n'
