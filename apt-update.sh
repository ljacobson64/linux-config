#!/bin/bash

apt -y update
apt -y upgrade
apt -y dist-upgrade
apt -y install `cat aptlist`
apt -y autoremove
