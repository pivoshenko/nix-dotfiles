{ config, pkgs, ... }:

{
  catppuccin = {
    enable = true;
    flavor = "macchiato";
    accent = "mauve";

    hyprland = {
      enable = true;
      flavor = "macchiato";
      accent = "mauve";
    };

    hyprlock = {
      enable = true;
      flavor = "macchiato";
      accent = "mauve";
    };

    starship = {
      enable = true;
      flavor = "macchiato";
    };
  };
}
