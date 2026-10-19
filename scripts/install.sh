#!/usr/bin/env sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
pet_codex_dir=${1:-${CODEX_HOME:-"$HOME/.codex"}}
target_dir="$pet_codex_dir/pets/rin-miko"

mkdir -p "$target_dir"
cp "$script_dir/../pet/pet.json" "$target_dir/pet.json"
cp "$script_dir/../pet/spritesheet.webp" "$target_dir/spritesheet.webp"

printf 'Installed 巫女りん to %s\n' "$target_dir"
