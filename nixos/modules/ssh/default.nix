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
      IdentityFile ~/.ssh/id_ed25519
    '';
  };
}
