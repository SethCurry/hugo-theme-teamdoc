#!/usr/bin/env bash

for i in $(find ./static -type f -iname "*.uml.png"); do
  echo "Cleaning up $i"
  rm $i
done
