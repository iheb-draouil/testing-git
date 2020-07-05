#!/usr/bin/env sh

files=$(find . -name '.git')

for file in $files
do
    echo -e "\n# Current directory: ${file%/*}\n"
    git -C "${file%/*}" add .
    git -C "${file%/*}" commit -m "auto-commit"
    git -C "${file%/*}" push
    echo -e "\n\n-------------\n"
done
