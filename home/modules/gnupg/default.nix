{ config, lib, pkgs, ... }:

{
  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableFishIntegration = true;
    enableScDaemon = false;

    defaultCacheTtl = 31536000;
    maxCacheTtl = 31536000;

    pinentry.package = pkgs.pinentry-curses;
  };
}
