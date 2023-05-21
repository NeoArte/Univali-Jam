#!/bin/sh
echo -ne '\033c\033]0;Univali Jam\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Univali Jam.x86_64" "$@"
