{ config, lib, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      editor = {
        bufferline = "always";
        color-modes = true;
        completion-trigger-len = 1;
        cursorline = true;
        end-of-line-diagnostics = "hint";
        line-number = "relative";
        mouse = true;
        rulers = [ 100 ];
        shell = [
          "fish"
          "-c"
        ];
        true-color = true;

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        file-picker = {
          git-ignore = true;
          hidden = false;
          ignore = true;
        };

        indent-guides = {
          render = true;
        };

        inline-diagnostics = {
          cursor-line = "error";
        };

        lsp = {
          display-inlay-hints = true;
          display-messages = true;
        };

        statusline = {
          center = [ ];
          left = [
            "mode"
            "separator"
            "version-control"
            "spinner"
            "diagnostics"
            "workspace-diagnostics"
          ];
          right = [
            "selections"
            "primary-selection-length"
            "position"
            "spacer"
            "total-line-numbers"
            "file-name"
            "file-type"
          ];
          separator = "│";
        };

        whitespace = {
          characters = {
            nbsp = "⍽";
            space = "·";
            tab = "→";
            tabpad = "·";
          };
          render = {
            newline = "none";
            space = "all";
            tab = "all";
          };
        };
      };
    };
  };
}
