{
  config,
  lib,
  pkgs,
  ...
}:

{
  catppuccin = {
    enable = true;
    accent = "mauve";
    flavor = "macchiato";

    grub.enable = true;
    plymouth.enable = true;
    tty.enable = true;
  };
}
