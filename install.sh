#!/bin/bash

mkdir -p $HOME/bin

dir="$(pwd)"

if [[ $dir != */ ]]; then
  dir="$dir/*"
else
  dir="$dir*"
fi

for f in $dir; do
  [ ! -d "${f}" ] && [ -x "${f}" ] && [ $(basename "$f") != "install.sh" ] || continue
  ln -s $f $HOME/bin/ 2> /dev/null
done
