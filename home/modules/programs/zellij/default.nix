{
  config,
  lib,
  pkgs,
  ...
}:

let
  zjstatusVersion = "v0.21.0";
  zjstatusUrl = "https://github.com/dj95/zjstatus/releases/download/${zjstatusVersion}/zjstatus.wasm";
  inherit (config.lib.stylix) colors;
in
{
  programs.zellij = {
    enable = true;

    settings = {
      session_serialization = false;
      simplified_ui = true;
      mouse_mode = true;
    };
  };

  home.file.".config/zellij/plugins/zjstatus.wasm".source = pkgs.fetchurl {
    url = zjstatusUrl;
    sha256 = "a7a2539c0ca29b44f74e42731a1122b737372693e8bcbe64ee36fc82ffa82c3e";
  };
}
