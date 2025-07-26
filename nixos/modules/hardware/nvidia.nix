{ config, lib, pkgs, ... }:

{
  # Environment variables for Nvidia and Wayland compatibility
  environment.sessionVariables = {
    GBM_BACKEND = "nvidia-drm";
    LIBVA_DRIVER_NAME = "nvidia";
    NIXOS_OZONE_WL = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
    __GLX_VENDOR_LIBRARY_NVIDIA = "1";
  };

  environment.systemPackages = with pkgs; [
    glxinfo  # OpenGL/GLX information utility
    intel-gpu-tools  # Intel GPU debugging and profiling tools
    nvtopPackages.intel  # htop-like monitor for Intel GPUs
    nvtopPackages.nvidia  # htop-like monitor for Nvidia GPUs
    pciutils  # PCI device utilities (lspci command)
    usbutils  # USB device utilities (lsusb command)
    vulkan-tools  # Vulkan API debugging and testing tools
  ];

  hardware.nvidia = {
    dynamicBoost.enable = false;

    modesetting.enable = true;

    nvidiaSettings = true;

    # Use proprietary driver (not open source)
    open = false;

    package = config.boot.kernelPackages.nvidiaPackages.stable;

    powerManagement.enable = true;
    powerManagement.finegrained = true;

    # Nvidia Optimus PRIME configuration for hybrid graphics
    prime = {
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";

      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
    };
  };

  hardware.nvidia-container-toolkit.enable = true;

  services.xserver.videoDrivers = [ "nvidia" ];

  # Specialization for sync mode (better performance, higher power usage)
  specialisation = {
    nvidia-sync.configuration = {
      hardware.nvidia = {
        powerManagement.finegrained = lib.mkForce false;

        prime.offload.enable = lib.mkForce false;
        prime.offload.enableOffloadCmd = lib.mkForce false;

        prime.sync.enable = lib.mkForce true;
      };

      system.nixos.tags = [ "nvidia-sync" ];
    };
  };
}
