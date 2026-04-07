#!/bin/sh

set -euo pipefail

scriptsDir="$(realpath "$(dirname "$0")")"
rootDir="$(realpath "$(dirname "$scriptsDir")")"

outDir="${rootDir}/dist"
if [ -d "$outDir" ]; then
  echo "Output directory already exists: ${outDir}"
  exit 1
fi

mkdir "$outDir"

inMesDir="${rootDir}/MES"
outMesDir="${outDir}/MES"

mkdir "$outMesDir"

echo "Compiling scripts to: ${outMesDir}"

for inFile in "$inMesDir"/*.MEC.rkt "$inMesDir"/*.MES.rkt; do
  outFile="${outMesDir}/$(basename "$inFile" ".rkt")"
  juice --engine ADV --extraop --force --output "$outFile" --compile "$inFile"
  if grep "$(basename "$outFile")" "${rootDir}/checksums.sha256" | grep "$(sha256sum "$outFile" | cut -d' ' -f1)" \
  >/dev/null; then
    echo "Original file reproduced 1:1, dropping it from output"
    rm "$outFile"
  fi
done

echo "Final output:"
find "$outDir"
