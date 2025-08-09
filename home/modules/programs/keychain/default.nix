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

    # These options help reduce passphrase prompts
    extraFlags = [
      "--nogui"
      "--quick"
      "--quiet"
    ];
  };
}
