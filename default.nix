let
  pins = import ./pins.nix;
in
{
  pkgs ? import (builtins.fetchTarball pins.nixpkgs.src) { },
}:

pkgs.callPackage ./package.nix {
  lime-juice = pkgs.callPackage ./lime-juice.nix { };
}
