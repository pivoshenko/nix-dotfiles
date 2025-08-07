{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.ssh = {
    startAgent = true;
    extraConfig = ''
      AddKeysToAgent yes
      IdentitiesOnly yes
    '';
  };
}
