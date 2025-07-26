{ config, lib, pkgs, ... }:

{
  # Enable X11 windowing system
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };
}
