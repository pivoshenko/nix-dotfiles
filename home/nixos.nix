{ config, inputs, pkgs, ... }:

{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
    inputs.spicetify-nix.homeManagerModules.default
    inputs.zen-browser.homeModules.twilight
    inputs.stylix.homeModules.stylix
    ./modules/bat
    ./modules/bottom
    ./modules/catppuccin
    ./modules/delta
    ./modules/espanso
    ./modules/eza
    ./modules/fastfetch
    ./modules/fd
    ./modules/fish
    ./modules/fonts
    ./modules/fzf
    ./modules/gh
    ./modules/ghostty
    ./modules/git
    ./modules/gnupg
    ./modules/gtk
    ./modules/helix
    ./modules/packages
    ./modules/poetry
    ./modules/qt
    ./modules/spicetify
    ./modules/starship
    ./modules/stylix
    ./modules/uv
    ./modules/vesktop
    ./modules/zed
    ./modules/zen
    ./modules/zoxide
  ];

  home.username = "pivoshenko";
  home.homeDirectory = "/home/pivoshenko";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
