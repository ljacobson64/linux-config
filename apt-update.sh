#!/bin/bash

if [[ `lsb_release -sd` == *"Xenial"* ]]; then
  packlists="packlist-xenial"
elif [[ `lsb_release -sd` == *"Bionic"* ]]; then
  packlists="packlist-xenial packlist-bionic"
fi
if [[ `hostname` == "mcnp"* ]]; then
  packlists+=" packlist-bionic-slurm"
fi

apt -y update
apt -y upgrade
apt -y dist-upgrade
apt -y install `cat ${packlists}`
apt -y autoremove
