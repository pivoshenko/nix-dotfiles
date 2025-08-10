{
  pkgs,
  ...
}:

{
  programs.obsidian.defaultSettings.communityPlugins = [
    {
      pkg = pkgs.callPackage ./obsidian-copilot/package { };
    }
    {
      pkg = pkgs.callPackage ./obsidian-image-in-editor/package { };
      settings = builtins.fromJSON (builtins.readFile ./obsidian-image-in-editor/data.json);
    }
    {
      pkg = pkgs.callPackage ./obsidian-outliner/package { };
      settings = builtins.fromJSON (builtins.readFile ./obsidian-outliner/data.json);
    }
    {
      pkg = pkgs.callPackage ./obsidian-style-settings/package { };
      settings = builtins.fromJSON (builtins.readFile ./obsidian-style-settings/data.json);
    }
  ];
}
