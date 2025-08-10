{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    curl
    git
    gnupg
    pinentry-curses
    vim
    wget
  ];

  imports = [
    ./modules/catppuccin
    ./modules/fonts
    ./modules/gnome
    ./modules/gnupg
    ./modules/hardware
    ./modules/hyprland
    ./modules/ssh
    ./modules/system
    ./modules/xserver
  ];

  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  nixpkgs.config.allowUnfree = true;

  programs = {
    firefox.enable = true;
    fish.enable = true;
    nix-ld.enable = true;
  };
}
