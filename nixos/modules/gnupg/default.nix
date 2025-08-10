{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
    settings = {
      default-cache-ttl = 14400;
      max-cache-ttl = 86400;
    };
  };
}
