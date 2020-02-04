#!/bin/bash

apt-get -y install openjdk-9-jdk
dpkg --configure -a
dpkg -i --force-overwrite /var/cache/apt/archives/openjdk-9-jdk_9~b114-0ubuntu1_amd64.deb
