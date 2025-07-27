{ config, inputs, lib, pkgs, ... }:

{
  imports = [
    ../../nixos
    ./hardware.nix
  ];

  networking.hostName = "nixos";

  programs = {
    firefox.enable = true;
    fish.enable = true;
    ssh.startAgent = true;
  };

  system.stateVersion = "25.05";

  users.users.pivoshenko = {
    description = "pivoshenko";
    extraGroups = [
      "docker"
      "networkmanager"
      "wheel"
    ];
    isNormalUser = true;
    shell = pkgs.fish;
  };

  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;

    autoPrune = {
      enable = true;
      dates = "weekly";
    };

    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
}
