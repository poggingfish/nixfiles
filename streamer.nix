{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = [pkgs.obs-studio];
}
