{ config, lib, pkgs, ... }:

{
  # Wayland session variables for better compatibility with Nvidia and Hyprland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
    hyprpicker
    pyprland
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  programs.hyprlock.enable = true;

  services.hypridle.enable = true;
}
