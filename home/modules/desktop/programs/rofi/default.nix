{
  config,
  pkgs,
  ...
}:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;

    cycle = true;

    extraConfig = {
      drun-show-actions = true;
      show-icons = true;
      window-format = "{t} [{c}]";
    };

    font = "${config.stylix.fonts.monospace.name} 14";

    location = "center";

    terminal = "ghostty";
  };
}
