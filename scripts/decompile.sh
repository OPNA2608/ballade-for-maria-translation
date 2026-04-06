#!/bin/sh

set -euo pipefail

scriptsDir="$(realpath "$(dirname "$0")")"
rootDir="$(realpath "$(dirname "$scriptsDir")")"

inDir="${rootDir}/MARIA"
if [ ! -d "$inDir" ]; then
  echo "Please extract the original game's directory (MARIA) into: ${inDir}"
  exit 1
fi

inMesDir="${inDir}/MES"
outMesDir="${rootDir}/MES"
echo "Decompiling scripts to: ${outMesDir}"

for inFile in "$inMesDir"/*.MEC "$inMesDir"/*.MES; do
  outFile="${outMesDir}/$(basename "$inFile").rkt"
  juice --engine ADV --extraop --force --output "$outFile" --decompile "$inFile"
done
