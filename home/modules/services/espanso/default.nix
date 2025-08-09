{
  config,
  lib,
  pkgs,
  ...
}:

# TODO Espanso daemon is not running
{
  services.espanso = {
    enable = true;

    matches = {
      base = {
        matches = [
          {
            trigger = ":date";
            replace = "{{currentdate}}";
          }

          # == Git ==
          {
            trigger = ":gcbldu";
            form = "build: update dependencies";
          }
          {
            trigger = ":gcblda";
            form = "build: add ";
          }
          {
            trigger = ":gcbldar";
            form = "build: remove ";
          }
          {
            trigger = ":gcsf";
            form = "style: run formatters";
          }
          {
            trigger = ":gcrl";
            form = "refactor: run linters";
          }
        ];
      };

      global_vars = {
        global_vars = [
          {
            name = "currentdate";
            type = "date";
            params = {
              format = "%Y%m%d";
            };
          }
        ];
      };
    };
  };
}
