{
  stdenv,
  lib,
  fetchFromGitHub,
  cmake,
}:

let
  pins = import ./pins.nix;
in
stdenv.mkDerivation (finalAttrs: {
  pname = "lime-juice";
  inherit (pins.lime-juice) version;

  src = fetchFromGitHub pins.lime-juice.src;

  strictDeps = true;

  nativeBuildInputs = [
    cmake
  ];

  installPhase = ''
    runHook preInstall

    install -Dm755 -t $out/bin juice juice-img

    runHook postInstall
  '';

  meta = {
    description = "C++ port of Tomyun's 'Juice' de/recompiler for PC-98 games using the ADV engine";
    homepage = "https://github.com/EK720/lime-juice";
    license = lib.licenses.unfree;
    mainProgram = "juice";
    maintainers = with lib.maintainers; [ OPNA2608 ];
    platforms = lib.platforms.unix;
  };
})
