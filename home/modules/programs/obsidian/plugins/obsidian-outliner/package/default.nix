{
  lib,
  pkgs,
  ...
}:

pkgs.stdenv.mkDerivation rec {
  pname = "obsidian-outliner";
  version = "4.9.0";

  srcs = [
    (pkgs.fetchurl {
      url = "https://github.com/vslinko/obsidian-outliner/releases/download/${version}/main.js";
      sha256 = "sha256-J4zXRLEgW956+l+SgfWohyS/HVdXN36OGaiwEgA2V24=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/vslinko/obsidian-outliner/releases/download/${version}/manifest.json";
      sha256 = "sha256-rPgrp7ODYRXvyOA5RvoSNGYkq7Nvz4jeTh179K8ucoc=";
    })
    (pkgs.fetchurl {
      url = "https://github.com/vslinko/obsidian-outliner/releases/download/${version}/styles.css";
      sha256 = "sha256-eSKiZIg4lOafIsN/VJdE99RtHekm/IAqpOlMdc0vvOs=";
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
    description = "Work with your lists like in Workflowy or RoamResearch";
    homepage = "https://github.com/vslinko/obsidian-outliner";
    license = lib.licenses.mit;
  };
}
