{
  config,
  lib,
  ...
}:

let
  colors = {
    mauve = "38;2;${config.lib.stylix.colors.base0E-rgb-r};${config.lib.stylix.colors.base0E-rgb-g};${config.lib.stylix.colors.base0E-rgb-b}";
  };
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
          "3" = colors.mauve;
        };
      };

      display = {
        separator = " ";
      };

      modules = [
        {
          type = "os";
          key = "";
          keyColor = colors.mauve;
          format = "{name} {version}";
        }
        {
          type = "cpu";
          key = "󰘚";
          keyColor = colors.mauve;
          showPeCoreCount = true;
          temp = true;
        }
        {
          type = "gpu";
          key = "󰡷";
          keyColor = colors.mauve;
          temp = true;
        }
        {
          type = "memory";
          key = "󰍛";
          keyColor = colors.mauve;
        }
        {
          type = "disk";
          key = "󰋊";
          keyColor = colors.mauve;
          folders = "/";
        }
        {
          type = "break";
        }
        {
          type = "media";
          key = "";
          keyColor = colors.mauve;
        }
      ];
    };
  };
}
