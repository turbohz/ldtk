{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz") {} }:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.buildPackages.haxe
    pkgs.buildPackages.neko
    pkgs.buildPackages.nodejs_14
  ];
  HAXE_STD_PATH = "${pkgs.haxe}/lib/haxe/std";
  NEKOPATH = "${pkgs.neko}/lib/neko/";
}
