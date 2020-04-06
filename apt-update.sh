#!/bin/bash

if [[ `lsb_release -sd` == *"18.04"* ]]; then
  aptlist=aptlist-18.04
elif [[ `lsb_release -sd` == *"Focal"* ]]; then
  aptlist=aptlist-20.04
fi

apt -y update
apt -y upgrade
apt -y dist-upgrade
apt -y install `cat ${aptlist}`
apt -y autoremove
