{ config, inputs, pkgs, ... }:

{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
    ./modules/catppuccin
    ./modules/fonts
    ./modules/packages
    ./modules/shell
  ];

  home.username = "pivoshenko";
  home.homeDirectory = "/home/pivoshenko";
  home.packages = with pkgs; [];
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
