{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.ssh = {
    # Disable system SSH agent since we're using keychain at user level
    startAgent = false;
    extraConfig = ''
      AddKeysToAgent yes
      IdentitiesOnly yes
      IdentityFile ~/.ssh/id_ed25519
    '';
  };
}
