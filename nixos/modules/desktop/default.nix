{ config, lib, pkgs, ... }:

{
  imports = [
    ./gnome.nix
    ./hyperland.nix
    ./xserver.nix
  ];
}
