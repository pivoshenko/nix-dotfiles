{
  lib,
  pkgs,
  ...
}:

pkgs.stdenv.mkDerivation rec {
  pname = "obsidian-image-in-editor";
  version = "2.2.6";

  srcs = [
    (pkgs.fetchurl {
      url = "https://github.com/ozntel/oz-image-in-editor-obsidian/releases/download/${version}/main.js";
      sha256 = "sha256-H6NVEHMan9W6DU7kniaxdm+di6remEkgYca3T2ygyzE=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/ozntel/oz-image-in-editor-obsidian/releases/download/${version}/manifest.json";
      sha256 = "sha256-yqFd9MeyNoBdMBT90gJBJNu0W1gma8go90vi9cIdaik=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/ozntel/oz-image-in-editor-obsidian/releases/download/${version}/styles.css";
      sha256 = "sha256-HIVD61CJAMDdjCzFPcsQT7l1Fw7p39txWJD1mEtiOsA=";
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
    description = "Obsidian plugin to view Images, Transclusions, iFrames and PDF Files within the Editor without a necessity to switch to Preview";
    homepage = "https://github.com/ozntel/oz-image-in-editor-obsidian";
    license = lib.licenses.mit;
  };
}
