{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # IDEs
    helix
    neovim
    vscode
    zed-editor

    # Shell
    starship

    # Terminal
    ghostty
  ];
}
