#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y install $(cat aptlist)
sudo apt -y autoremove
sudo apt -y clean
