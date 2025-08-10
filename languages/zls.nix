{stdenv, fetchurl,}:

stdenv.mkDerivation {
    pname = "zls";
    version = "0.14.0";
    src = fetchurl {
        url = "https://github.com/zigtools/zls/releases/download/0.14.0/zls-x86-linux.tar.xz";
        sha256 = "ecp2K2zVz/wWXUc2Nv4OGyJdKk915f7VVSYb5PBGFms=";
    };
    sourceRoot = ".";
    dontConfigure = true;
    dontBuild = true;
    dontFixup = true;
    installPhase = ''
	mkdir -p $out/bin
        cp "zls" $out/bin
    '';
}
