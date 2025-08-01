{ config, lib, pkgs, ... }:

{
  stylix = {
    enable = true;

    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";

    image = ../../assets/wallpapers/logo/logo_00.png;

    fonts = {
        serif = {
          package = pkgs.noto-fonts;
          name = "Noto Serif";
        };

        sansSerif = {
          package = pkgs.noto-fonts;
          name = "Noto Sans";
        };

        monospace = {
          package = pkgs.nerd-fonts.jetbrains-mono;
          name = "JetBrainsMono Nerd Font";
        };

        emoji = {
          package = pkgs.noto-fonts-emoji;
          name = "Noto Color Emoji";
        };
      };

    targets = {
      bat.enable = false;
      fish.enable = false;
      fzf.enable = true;
      ghostty.enable = false;
      helix.enable = false;
      hyprland.enable = false;
      hyprlock.enable = false;
      spicetify.enable = true;
      starship.enable = false;
      vscode.enable = false;
      zed.enable = false;
    };
  };
}
