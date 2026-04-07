{
  stdenvNoCC,
  lib,
  lime-juice,
}:

let
  pins = import ./pins.nix;
  srcs = [
    {
      name = "checksums.sha256";
      file = ./checksums.sha256;
    }
    {
      name = "scripts";
      file = ./scripts;
    }
    {
      name = "MES";
      file = ./MES;
    }
  ];
in
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "ballade-for-maria-translation";
  version = lib.strings.trim (lib.strings.readFile ./version);

  srcs = builtins.map (srcEntry: srcEntry.file) srcs;

  unpackPhase = ''
    runHook preUnpack

    mkdir source
  ''
  + lib.strings.concatMapStringsSep "\n" (
    srcEntry: "cp -r ${srcEntry.file} source/${srcEntry.name}"
  ) srcs
  + ''

    runHook postUnpack
  '';

  sourceRoot = "source";

  nativeBuildInputs = [
    lime-juice
  ];

  buildPhase = ''
    runHook preBuild

    ls -ahl
    ./scripts/compile.sh

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mv dist $out

    runHook postInstall
  '';
})
