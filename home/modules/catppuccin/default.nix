{ config, lib, pkgs, ... }:

{
  catppuccin = {
    enable = false;
    accent = "mauve";
    flavor = "macchiato";

    bat.enable = true;
    bottom.enable = true;
    delta.enable = true;
    fish.enable = true;
    fzf.enable = false;
    ghostty.enable = true;
    helix.enable = true;
    hyprland.enable = true;
    hyprlock.enable = true;
    spotify-player.enable = false;
    starship.enable = true;
    vesktop.enable = true;
    zed.enable = true;
  };
}
