#!/usr/bin/env bash

for i in $(find ./content -type f -iname "*.puml"); do
  echo "Building $i"

  outPath="./static/${i#./content/}.png"
  echo $outPath

  outDir=$(dirname $outPath)
  if [ ! -e "${outDir}" ]; then
    mkdir -p "${outDir}"
  fi

  cat $i | plantuml -pipe > "$outPath"
done
