{
  config,
  lib,
  ...
}:

let
  colorMauve = "38;2;${config.lib.stylix.colors.base0E-rgb-r};${config.lib.stylix.colors.base0E-rgb-g};${config.lib.stylix.colors.base0E-rgb-b}";
in
{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        type = "data";
        source = lib.mkForce ''
          $3
          $3 /| ､
          $3(°､ ｡ 7
          $3 |､  ~ヽ
          $3 じしf_,)〳
          $3
        '';
        color = {
          "3" = colorMauve;
        };
      };

      display = {
        separator = " ";
      };

      modules = [
        {
          type = "os";
          key = "";
          keyColor = colorMauve;
          format = "{name} {version}";
        }
        {
          type = "cpu";
          key = "󰘚";
          keyColor = colorMauve;
          showPeCoreCount = true;
          temp = true;
        }
        {
          type = "gpu";
          key = "󰡷";
          keyColor = colorMauve;
          temp = true;
        }
        {
          type = "memory";
          key = "󰍛";
          keyColor = colorMauve;
        }
        {
          type = "disk";
          key = "󰋊";
          keyColor = colorMauve;
          folders = "/";
        }
        {
          type = "break";
        }
        {
          type = "media";
          key = "";
          keyColor = colorMauve;
        }
      ];
    };
  };
}
