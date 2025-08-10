{
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

  services.gnome.gcr-ssh-agent.enable = false;
  services.gnome.gnome-keyring.enable = true;
}
