{ config, lib, pkgs, ... }:

{
  boot.blacklistedKernelModules = [ "nouveau" "nvidia" "nvidia_drm" "nvidia_modeset" ];

  boot.extraModprobeConfig = ''
    blacklist nouveau
    options nouveau modeset=0
  '';

  boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.grub = {
    devices = [ "nodev" ];
    efiSupport = true;
    enable = true;
    fontSize = 36;
    fsIdentifier = "label";
    gfxmodeEfi = "2560x1440";
    useOSProber = true;
  };

  boot.supportedFilesystems = [ "ntfs" ];
}
