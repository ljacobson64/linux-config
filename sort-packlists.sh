#!/bin/bash

packlists="aptlist* piplist*"
for p in ${packlists}; do
  cat ${p} | sort > temp
  mv temp ${p}
done
