{ config, lib, pkgs, ... }:

{
  imports = [
    ./audio.nix
    ./nvidia.nix
    ./printing.nix
  ];
}
