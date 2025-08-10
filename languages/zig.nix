{stdenv, fetchurl,}:

stdenv.mkDerivation {
    pname = "zig";
    version = "0.15.0";
    src = fetchurl {
        url = "https://ziglang.org/builds/zig-x86_64-linux-0.15.0-dev.1380+e98aeeb73.tar.xz";
        sha256 = "9Hd2gSTgJTrTbW/RHQIQR4Y1RJQduCPTcanctyTV0NE=";
    };
    dontConfigure = true;
    dontBuild = true;
    dontFixup = true;
    installPhase = ''
        mkdir -p $out/{doc,bin,lib}
        [ -d docs ] && cp -r docs/* $out/doc
        [ -d doc ] && cp -r doc/* $out/doc
        cp -r lib/* $out/lib
        cp "zig" $out/bin
    '';
}
