{
  pkgs,
  ...
}:

{
  stylix = {
    enable = true;

    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";

    image = ../wallpapers/logo/logo_00.png;

    fonts = {
      sizes = {
        applications = 14;
      };

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
