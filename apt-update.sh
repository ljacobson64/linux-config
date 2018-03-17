#!/bin/bash

apt -y update
apt -y upgrade
apt -y dist-upgrade
apt -y install `cat packlist`
if [[ "${HOSTNAME}" == "mcnp"* ]]; then
  apt -y install `cat packlist-phoenix`
fi
apt -y autoremove
