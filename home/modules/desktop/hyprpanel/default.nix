{
  config,
  ...
}:

{
  programs.hyprpanel = {
    enable = true;

    settings = {
      layout = {
        bar.layouts = {
          "*" = {
            "left" = [
              "dashboard"
              "workspaces"
              "windowtitle"
            ];
            "middle" = [
              "media"
            ];
            "right" = [
              "volume"
              "network"
              "bluetooth"
              "battery"
              "systray"
              "clock"
              "notifications"
            ];
          };
          "0" = {
            "left" = [
              "dashboard"
              "workspaces"
              "windowtitle"
            ];
            "middle" = [
              "media"
            ];
            "right" = [
              "volume"
              "network"
              "bluetooth"
              "battery"
              "systray"
              "clock"
              "notifications"
            ];
          };
          "1" = {
            "left" = [
              "dashboard"
              "workspaces"
              "windowtitle"
            ];
            "middle" = [
              "media"
            ];
            "right" = [
              "volume"
              "network"
              "bluetooth"
              "battery"
              "systray"
              "clock"
              "notifications"
            ];
          };
        };
      };

      bar = {
        launcher.autoDetectIcon = true;
        workspaces.show_icons = true;
      };

      menus.clock = {
        time = {
          military = true;
          hideSeconds = true;
        };

        weather = {
          unit = "metric";
          location = "London";
          key = "62cc8af97d144a42ad573800242006";
        };
      };

      menus.dashboard = {
        directories.enabled = false;
        stats.enable_gpu = true;
      };

      theme = {
        bar = {
          transparent = true;
          buttons.style = "wave2";
        };
        font = {
          name = config.stylix.fonts.monospace.name;
          size = 16;
        };
      };
    };
  };
}
