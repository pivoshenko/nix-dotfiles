{ config, inputs, pkgs, ... }:

{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
    inputs.spicetify-nix.homeManagerModules.default
    inputs.zen-browser.homeModules.twilight
    # inputs.stylix.nixosModules.stylix
    ./modules/catppuccin
    ./modules/espanso
    ./modules/fish
    ./modules/fonts
    ./modules/ghostty
    ./modules/gtk
    ./modules/helix
    ./modules/packages
    ./modules/spicetify
    ./modules/starship
    ./modules/zed
    ./modules/zen
    ./modules/zoxide
  ];

  home.username = "pivoshenko";
  home.homeDirectory = "/home/pivoshenko";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
