{ config, inputs, lib, pkgs, ... }:

{
  imports = [
    ../../nixos
    ./hardware.nix
  ];

  networking.hostName = "nixos";

  programs.firefox.enable = true;
  programs.fish.enable = true;
  programs.ssh.startAgent = true;

  system.stateVersion = "25.05";

  users.users.pivoshenko = {
    description = "pivoshenko";
    extraGroups = [ "docker" "networkmanager" "wheel" ];
    isNormalUser = true;
    shell = pkgs.fish;
  };
}
