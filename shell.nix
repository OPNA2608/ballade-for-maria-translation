let
  pins = import ./pins.nix;
in
{
  pkgs ? import (builtins.fetchTarball pins.nixpkgs.src) { },
}:

let
  lime-juice = pkgs.callPackage ./lime-juice.nix { };
in
pkgs.mkShell {
  packages =
    (with pkgs; [
      editorconfig-checker
      graphviz
      nixfmt
      pre-commit
      racket-minimal

      # Testing
      dosbox-x
    ])
    ++ [
      lime-juice
    ];

  shellHook = ''
    pre-commit install
  '';
}
