{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSEnv {
    name = "devenv";
    targetPkgs = pkgs: (with pkgs; [
        rustc
        cargo
        clippy
        clang
        clang-tools
   	    mold
        pkg-config
        xorg.libX11
        xorg.libX11.dev
        cmake
        gcc
        github-cli
        (callPackage ./languages/zig.nix { })
    ]);

    runScript = "bash";
}).env
