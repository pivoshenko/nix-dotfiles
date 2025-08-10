{
  lib,
  pkgs,
  ...
}:

pkgs.stdenv.mkDerivation rec {
  pname = "obsidian-style-settings";
  version = "1.0.9";

  srcs = [
    (pkgs.fetchurl {
      url = "https://github.com/mgmeyers/obsidian-style-settings/releases/download/${version}/main.js";
      sha256 = "sha256-GCirqs2rTFV4twWmJcWFswUS+O+tTHz8WhjnDMNVdGg=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/mgmeyers/obsidian-style-settings/releases/download/${version}/manifest.json";
      sha256 = "sha256-nP/cIM8qoTVIIOAFC2lLD5tXZEbj1dRKNq6LAYflv7g=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/mgmeyers/obsidian-style-settings/releases/download/${version}/styles.css";
      sha256 = "sha256-7nk30r5QZTqJzLMK5fBXKyNQfVt/EyjQBScaNjB1v9g=";
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
    description = "Style Settings plugin for Obsidian";
    homepage = "https://github.com/mgmeyers/obsidian-style-settings";
    license = lib.licenses.mit;
  };
}
