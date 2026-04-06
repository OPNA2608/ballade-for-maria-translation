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
done
