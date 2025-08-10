{
  config,
  lib,
  pkgs,
  ...
}:

{
  services.gnome-keyring = {
    enable = true;
    components = [
      "secrets"
      "ssh"
    ];
  };

  home.sessionVariables = {
    SSH_AUTH_SOCK = "$XDG_RUNTIME_DIR/keyring/ssh";
  };
}
