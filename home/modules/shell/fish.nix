{ config, lib, pkgs, ... }:

{
  programs.fish.enable = true;

  xdg.configFile."fish/config.fish" = lib.mkForce {
    source = ./fish/config.fish;
  };
}
