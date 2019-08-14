#!/bin/bash

packlists=packlist*
for p in ${packlists}; do
  cat ${p} | sort > temp
  mv temp ${p}
done
