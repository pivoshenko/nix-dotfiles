{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  programs.spicetify = {
    enable = true;

    enabledCustomApps = with inputs.spicetify-nix.legacyPackages.${pkgs.system}.apps; [ ];

    enabledSnippets = with inputs.spicetify-nix.legacyPackages.${pkgs.system}.snippets; [ ];
  };
}
