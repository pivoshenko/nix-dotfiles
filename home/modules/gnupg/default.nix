{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableFishIntegration = true;
    enableScDaemon = false;

    defaultCacheTtl = 14400;
    maxCacheTtl = 86400;

    pinentry.package = pkgs.pinentry-curses;
  };
}
