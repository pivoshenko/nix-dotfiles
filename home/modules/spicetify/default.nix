{ config, lib, pkgs, inputs, ... }:

{
  programs.spicetify = {
    enable = true;

    enabledCustomApps = with inputs.spicetify-nix.legacyPackages.${pkgs.system}.apps; [
      newReleases
      ncsVisualizer
    ];

    enabledSnippets = with inputs.spicetify-nix.legacyPackages.${pkgs.system}.snippets; [
      rotatingCoverart
      pointer
    ];
  };
}
