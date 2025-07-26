{ config, lib, pkgs, ... }:

{
  boot.initrd.availableKernelModules = [ "i915" ];
  boot.initrd.kernelModules = [ "i915" ];
  boot.initrd.systemd.enable = true;

  boot.kernelParams = [
    "quiet"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "splash"
    "video=2560x1440"
  ];

  boot.plymouth.enable = true;

  environment.systemPackages = with pkgs; [
    plymouth
  ];
}
