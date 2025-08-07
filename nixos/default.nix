{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./modules/catppuccin
    ./modules/fonts
    ./modules/gnome
    ./modules/hardware
    ./modules/hyprland
    ./modules/security
    ./modules/system
    ./modules/xserver
  ];

  environment.systemPackages = with pkgs; [
    curl
    git
    gnupg
    pinentry-curses
    vim
    wget
    home-manager
  ];

  programs = {
    firefox.enable = true;
    fish.enable = true;
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfree = true;
}
