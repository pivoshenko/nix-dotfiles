{ config, lib, pkgs, ... }:

{
  programs.git.delta = {
    enable = true;
  };
}
