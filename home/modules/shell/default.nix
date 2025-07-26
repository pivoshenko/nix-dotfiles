{ config, lib, pkgs, ... }:

{
  imports = [
    ./fish.nix
    ./starship.nix
  ];
}
