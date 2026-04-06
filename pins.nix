{
  nixpkgs = {
    # https://channels.nixos.org/nixpkgs-unstable
    version = "26.05pre975217.5e11f7acce6c";
    src = {
      url = "https://github.com/NixOS/nixpkgs/archive/5e11f7acce6c3469bef9df154d78534fa7ae8b6c.tar.gz";
      sha256 = "sha256-cGyKiTspHEUx3QwAnV3RfyT+VOXhHLs+NEr17HU34Wo=";
    };
  };
  lime-juice = {
    # https://github.com/EK720/lime-juice
    version = "0.2.1-unstable-2026-03-18";
    src = {
      owner = "EK720";
      repo = "lime-juice";
      rev = "ec7e4bd993ff60b726cc5e3d04649bc939077e19";
      hash = "sha256-bWVLK20q+3Uo7NgrrYhWUscZsyBfrTgANcJPwcc8TDU=";
    };
  };
}
