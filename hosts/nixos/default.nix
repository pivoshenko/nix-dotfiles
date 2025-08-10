{
  pkgs,
  ...
}:

# TODO Add system auto upgrade
{
  imports = [
    ../../nixos
    ./hardware.nix
  ];

  networking.hostName = "nixos";

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
