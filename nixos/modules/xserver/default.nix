{
  config,
  lib,
  pkgs,
  ...
}:

{
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };
}
