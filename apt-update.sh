#!/bin/bash

if [[ `lsb_release -sd` == *"16.04"* ]]; then
  packlists="packlist-xenial"
elif [[ `lsb_release -sd` == *"17.10"* ]] || [[ `lsb_release -sd` == *"18.04"* ]]; then
  packlists="packlist-xenial packlist-bionic"
fi

apt -y update
apt -y upgrade
apt -y dist-upgrade
apt -y install `cat ${packlists}`
apt -y autoremove
