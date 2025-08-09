{
  config,
  lib,
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    gnome-extension-manager
    gnome-tweaks
  ];

  services.desktopManager.gnome.enable = true;

  services.displayManager.gdm.enable = true;

  # Disable GNOME SSH agent and keyring since we're using keychain + gpg-agent
  services.gnome.gcr-ssh-agent.enable = false;
  services.gnome.gnome-keyring.enable = lib.mkForce false;
}
