{
  config,
  lib,
  pkgs,
  ...
}:

# TODO Replace hard coded colors with Stylix color
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
          "3" = "38;2;202;158;230";
        };
      };

      display = {
        separator = " ";
      };

      modules = [
        {
          type = "os";
          key = "";
          keyColor = "38;2;202;158;230";
          format = "{name} {version}";
        }
        {
          type = "cpu";
          key = "󰘚";
          keyColor = "38;2;202;158;230";
          showPeCoreCount = true;
          temp = true;
        }
        {
          type = "gpu";
          key = "󰡷";
          keyColor = "38;2;202;158;230";
          temp = true;
        }
        {
          type = "memory";
          key = "󰍛";
          keyColor = "38;2;202;158;230";
        }
        {
          type = "disk";
          key = "󰋊";
          keyColor = "38;2;202;158;230";
          folders = "/";
        }
        {
          type = "break";
        }
        {
          type = "media";
          key = "";
          keyColor = "38;2;202;158;230";
        }
      ];
    };
  };
}
