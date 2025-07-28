{ config, lib, pkgs, ... }:

{
  catppuccin = {
    enable = true;
    accent = "mauve";
    flavor = "macchiato";

    bat.enable = true;
    bottom.enable = true;
    delta.enable = true;
    fish.enable = true;
    fzf.enable = true;
    ghostty.enable = true;
    helix.enable = true;
    hyprland.enable = true;
    hyprlock.enable = true;
    spotify-player.enable = true;
    starship.enable = true;
    vesktop.enable = true;
    zed.enable = true;
  };
}
