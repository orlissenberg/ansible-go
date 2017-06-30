#!/usr/bin/env bash

HOME=$(realpath ~)
GOPATHDIR="$HOME/gocode"

pathlist=("$HOME/.zshrc" "$HOME/.bashrc")

for shellscript in "${pathlist[@]}"
do
    if [ -f "$shellscript" ]
    then
        grep -q -F "GOPATH=" "$shellscript" || echo "Adding GO path ($GOPATHDIR) to $shellscript"
        grep -q -F "GOPATH=" "$shellscript" || echo -e '\nexport GOPATH="'$GOPATHDIR'"\n' >> "$shellscript"
    fi
done

# env | grep GO
