{
  pkgs,
  ...
}:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # == Base fonts ==
    noto-fonts
    noto-fonts-emoji

    # == Icon fonts ==
    material-design-icons
    material-icons

    # == Nerd fonts ==
    nerd-fonts.iosevka-term
    nerd-fonts.jetbrains-mono
    nerd-fonts.space-mono
  ];
}
