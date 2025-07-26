{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnome-extension-manager
    gnome-tweaks
  ];

  services.desktopManager.gnome.enable = true;

  services.displayManager.gdm.enable = true;

  # Disable GNOME SSH agent (conflicts with other agents)
  services.gnome.gcr-ssh-agent.enable = false;
}
