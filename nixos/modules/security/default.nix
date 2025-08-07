{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./gnupg.nix
    ./ssh.nix
  ];
}
