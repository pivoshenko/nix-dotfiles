{ config, lib, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    installBatSyntax = true;

    settings = {
      # == Clipboard ==
      clipboard-read = "allow";
      clipboard-write = "allow";
      copy-on-select = true;

      # == Cursor ==
      cursor-style = "bar";

      # == Fonts ==
      font-family = "JetBrainsMono Nerd Font";
      font-feature = [
        "calt"
        "clig"
        "kern"
        "liga"
      ];
      font-size = 14;

      # == Shell ==
      shell-integration = "fish";

      # == Window ==
      window-decoration = "client";
      window-theme = "system";
      window-title-font-family = "JetBrainsMono Nerd Font";
    };
  };
}
