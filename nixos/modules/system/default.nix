{ config, lib, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./gc.nix
    ./locale.nix
    ./network.nix
    ./plymouth.nix
  ];
}
