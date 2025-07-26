{ config, lib, pkgs, ... }:

{
  imports = [
    ./modules/desktop
    ./modules/fonts
    ./modules/hardware
    ./modules/services
    ./modules/system
    ./modules/themes
  ];

  environment.systemPackages = with pkgs; [
    curl
    git
    gnupg
    unzip
    vim
    wget
    zip
    home-manager
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
