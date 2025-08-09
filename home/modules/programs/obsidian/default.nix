{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.obsidian = {
    enable = true;

    defaultSettings.communityPlugins = [
      "obsidian-copilot"
    ];
  };
}
