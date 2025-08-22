{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = [pkgs.supercell-wx];
}
