#!/usr/bin/env sh

files=$(find . -name '.git')

for file in $files
do
    echo "${file%/*}"
    git -C "${file%/*}" add .
    git -C "${file%/*}" commit -m "auto-commit"
    git -C "${file%/*}" push
    echo "\n\n\n\n"
done
