{ config, lib, pkgs, ... }:

{
  catppuccin.enable = true;
  catppuccin.flavor = "macchiato";
  catppuccin.accent = "mauve";

  catppuccin.grub.enable = true;
  catppuccin.plymouth.enable = true;

  environment.systemPackages = with pkgs; [];

  environment.variables.GTK_THEME = "catppuccin-macchiato-mauve-standard";
  environment.variables.XCURSOR_THEME = "catppuccin-macchiato-mauve";
  environment.variables.XCURSOR_SIZE = "24";
  environment.variables.HYPRCURSOR_THEME = "catppuccin-macchiato-mauve";
  environment.variables.HYPRCURSOR_SIZE = "24";
}
