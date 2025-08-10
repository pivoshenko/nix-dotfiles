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
    enableFishIntegration = true;

    settings = {
      session_serialization = false;
      simplified_ui = true;
      mouse_mode = true;
    };

    layouts = {
      default = {
        layout = {
          _children = [
            {
              pane = {
                split_direction = "vertical";
              };
              _children = [
                {
                  pane = { };
                }
              ];
            }
            {
              pane = {
                size = 1;
                borderless = true;
                plugin = {
                  location = "file:~/.config/zellij/plugins/zjstatus.wasm";
                  hide_frame_for_single_pane = "true";
                  hide_frame_except_for_search = "true";

                  format_left = "{mode}#[fg=#${colors.base0C},bg=#${colors.base00},bold] {session}#[bg=#${colors.base00}] {tabs}";
                  format_right = "#[fg=#${colors.base05},bg=#${colors.base00}]::{datetime}";
                  format_space = "#[bg=#${colors.base00}]";

                  mode_normal = "#[bg=#${colors.base0C}] ";
                  mode_tmux = "#[bg=#${colors.base09}] ";
                  mode_default_to_mode = "tmux";

                  tab_normal = "#[fg=#${colors.base05},bg=#${colors.base00}] {index} {name} {fullscreen_indicator}{sync_indicator}{floating_indicator}";
                  tab_active = "#[fg=#${colors.base05},bg=#${colors.base00},bold,italic] {index} {name} {fullscreen_indicator}{sync_indicator}{floating_indicator}";
                  tab_fullscreen_indicator = "□ ";
                  tab_sync_indicator = "  ";
                  tab_floating_indicator = "󰉈 ";

                  datetime = "#[fg=#${colors.base05},bg=#${colors.base00}] {format} ";
                  datetime_format = "%A, %d %b %Y %H:%M";
                  datetime_timezone = "Europe/London";
                };
              };
            }
          ];
        };
      };
    };
  };

  home.file.".config/zellij/plugins/zjstatus.wasm".source = pkgs.fetchurl {
    url = zjstatusUrl;
    sha256 = "a7a2539c0ca29b44f74e42731a1122b737372693e8bcbe64ee36fc82ffa82c3e";
  };
}
