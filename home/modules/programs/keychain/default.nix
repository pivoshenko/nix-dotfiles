{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.keychain = {
    enable = true;
    enableFishIntegration = true;

    keys = [ "id_ed25519" ];

    extraFlags = [
      "--nogui"
      "--quick"
      "--quiet"
    ];
  };
}
