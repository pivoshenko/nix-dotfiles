{ config, lib, pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # Base fonts
    dejavu_fonts
    freefont_ttf
    inter
    lato
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    open-sans
    roboto

    # Developer fonts
    jetbrains-mono

    # Icon fonts
    font-awesome
    material-design-icons
    material-icons

    # Nerd fonts
    nerd-fonts.iosevka-term
    nerd-fonts.space-mono
    nerd-fonts.jetbrains-mono
  ];
}
