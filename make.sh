#!/usr/bin/env bash

_()
    while IFS= read -r line; do
        printf '%s\n' "$line"
    done

. main

rm -rf   "docs"
mkdir -p "docs"

shopt -s globstar

for src in src/**; {
    tmp=${src%.sh}
    tmp=${tmp/#src/docs}

    [[ -d $src ]] && {
        mkdir -p "$tmp"
        continue
    }

    [[ $src =~ \.sh$ ]] && {
        . "$src" > "$tmp"
        continue
    }

    cp "$src" "$tmp"
}

