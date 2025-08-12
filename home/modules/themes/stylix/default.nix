{
  pkgs,
  ...
}:

{
  stylix = {
    enable = true;
    autoEnable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";

    image = ../wallpapers/logo/logo_00.png;

    polarity = "dark";

    fonts = {
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };

      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };

      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
    };

    targets = {
      # == Desktop ==
      gtk.enable = true;
      hyprland.enable = false;
      hyprpaper.enable = true;
      qt.enable = false;
      rofi.enable = false;
      waybar.enable = false;

      # == Programs ==
      bat.enable = false;
      firefox.enable = false;
      fish.enable = false;
      fzf.enable = false;
      ghostty.enable = false;
      helix.enable = false;
      k9s.enable = false;
      lazygit.enable = false;
      starship.enable = false;
      vscode.enable = false;
      yazi.enable = false;
      zed.enable = false;
      zellij.enable = false;
      zen-browser = {
        enable = true;
        profileNames = [ "default" ];
      };
    };
  };
}
