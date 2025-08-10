{
  lib,
  pkgs,
  ...
}:

pkgs.stdenv.mkDerivation rec {
  pname = "obsidian-copilot";
  version = "2.9.5";

  srcs = [
    (pkgs.fetchurl {
      url = "https://github.com/logancyang/obsidian-copilot/releases/download/${version}/main.js";
      sha256 = "sha256-lLixDm9FQnshnAjs+zl+g3hncoW2hJEbSSDmlCmqccw=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/logancyang/obsidian-copilot/releases/download/${version}/manifest.json";
      sha256 = "sha256-9bzKKNhg/4Ouz4xcaDR3e+Am0D1VArCNIpEBwPU6Z8E=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/logancyang/obsidian-copilot/releases/download/${version}/styles.css";
      sha256 = "sha256-GgKVunU0oPIXHZRmbXLcvUpXWfuQ+qKoow4KFDYkc7U=";
    })
  ];

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
    mkdir -p $out
    cp ${builtins.elemAt srcs 0} $out/main.js
    cp ${builtins.elemAt srcs 1} $out/manifest.json
    cp ${builtins.elemAt srcs 2} $out/styles.css
  '';

  meta = {
    description = "Copilot in Obsidian";
    homepage = "https://github.com/logancyang/obsidian-copilot";
    license = lib.licenses.mit;
  };
}
