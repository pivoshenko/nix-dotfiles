{
  ...
}:

{
  programs.ssh = {
    startAgent = false;

    extraConfig = ''
      AddKeysToAgent yes
      IdentitiesOnly yes
      IdentityFile ~/.ssh/id_ed25519
    '';
  };
}
