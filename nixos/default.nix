{ config, lib, pkgs, ... }:

{
  imports = [
    ./modules/catppuccin
    ./modules/fonts
    ./modules/gnome
    ./modules/hardware
    ./modules/hyprland
    ./modules/system
    ./modules/xserver
  ];

  environment.systemPackages = with pkgs; [
    curl
    git
    gnupg
    pinentry-curses
    unzip
    vim
    wget
    zip
    home-manager
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
