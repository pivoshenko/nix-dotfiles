{ config, lib, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;

    enable32Bit = true;

    extraPackages = with pkgs; [
      intel-compute-runtime  # Intel OpenCL runtime for compute workloads
      intel-media-driver  # Intel VAAPI driver for newer hardware (Gen 8+)
      intel-vaapi-driver  # Legacy Intel VAAPI driver for older hardware
      libvdpau-va-gl  # VDPAU driver backed by VAAPI
      vaapiIntel  # Intel VAAPI driver package
      vaapiVdpau  # VAAPI to VDPAU translation layer
    ];

    extraPackages32 = with pkgs.pkgsi686Linux; [
      intel-vaapi-driver  # 32-bit Intel VAAPI driver
      vaapiIntel  # 32-bit Intel VAAPI driver package
    ];
  };
}
