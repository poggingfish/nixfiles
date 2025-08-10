{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = [pkgs.github-cli];
  shellHook = ''
      git config set credential.https://github.com.helper "/usr/bin/env gh gh auth git-credential"
  '';
}
