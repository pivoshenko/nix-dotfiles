{ config, lib, pkgs, ... }:

{
  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableScDaemon = false;

    defaultCacheTtl = 14400;
    maxCacheTtl = 86400;
  };
}
