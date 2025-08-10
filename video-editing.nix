{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = [pkgs.ffmpeg pkgs.kdePackages.kdenlive];
}
