{ config, lib, pkgs, ... }:

{
  programs.eza = {
    enable = true;
    enableFishIntegration = true;

    git = true;

    colors = "always";
    icons = "always";

    extraOptions = [
      "-a"
      "--level=1"
    ];
  };
}
