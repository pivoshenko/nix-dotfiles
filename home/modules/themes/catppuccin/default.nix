{
  config,
  lib,
  pkgs,
  ...
}:

{
  catppuccin = {
    enable = true;
    accent = "mauve";
    flavor = "macchiato";

    bat.enable = true;
    bottom.enable = true;
    delta.enable = true;
    cursors.enable = true;
    fish.enable = true;
    fzf.enable = true;
    ghostty.enable = true;
    helix.enable = true;
    k9s.enable = true;
    kvantum.enable = true;
    spotify-player.enable = true;
    starship.enable = true;
    vesktop.enable = true;
    vscode.enable = true;
    yazi.enable = true;
    zellij.enable = true;
    zed.enable = true;
  };
}
