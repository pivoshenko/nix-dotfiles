{ config, lib, pkgs, ... }:

{
  boot = {
    initrd = {
      availableKernelModules = [ "i915" ];
      kernelModules = [ "i915" ];
      systemd.enable = true;
    };
    kernelParams = [
      "quiet"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "splash"
      "video=2560x1440"
    ];
    plymouth.enable = true;
  };

  environment.systemPackages = with pkgs; [
    plymouth
  ];
}
