#!/bin/bash

files="bash-aliases bash-env bashrc-default bash-remotes cshrc emacs gitconfig"

orig_dir=${PWD}
cd
for f in $files; do
  ln -snf ${orig_dir}/${f} .${f}
done
