{ config, lib, pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrainsMono Nerd Font" ];
        sansSerif = [ "Noto Sans" "Liberation Sans" ];
        serif = [ "Noto Serif" "Liberation Serif" ];
      };
    };
  };
}
