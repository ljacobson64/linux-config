#!/bin/bash

apt -y update
apt -y upgrade
apt -y dist-upgrade
apt -y install `cat packlist`
apt -y autoremove
