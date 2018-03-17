#!/bin/bash

files="bash-env cshrc emacs gitconfig"

orig_dir=${PWD}
cd
for f in $files; do
  ln -snf ${orig_dir}/${f} .${f}
done
