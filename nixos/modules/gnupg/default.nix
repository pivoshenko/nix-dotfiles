{
  pkgs,
  ...
}:

{
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;

    pinentryPackage = pkgs.pinentry-curses;

    settings = {
      default-cache-ttl = 14400;
      max-cache-ttl = 86400;
    };
  };
}
