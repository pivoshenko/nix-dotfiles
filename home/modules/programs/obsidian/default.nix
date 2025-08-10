{
  config,
  ...
}:

{
  imports = [
    ./plugins
    ./themes
  ];

  programs.obsidian = {
    enable = true;

    vaults = {
      notes = {
        enable = true;
        target = "Development/notes";
      };
    };

    defaultSettings = {
      app = {
        alwaysUpdateLinks = true;
        livePreview = false;
        newFileLocation = "current";
        promptDelete = false;
        readableLineLength = true;
        showLineNumber = true;
        tabSize = 2;
        vimMode = true;
      };

      appearance = {
        baseFontSize = 16;
        cssTheme = "Catppuccin";
        enabledCssSnippets = [
          "readable"
        ];
        interfaceFontFamily = config.stylix.fonts.monospace.name;
        monospaceFontFamily = config.stylix.fonts.monospace.name;
        showRibbon = false;
        textFontFamily = config.stylix.fonts.monospace.name;
        theme = "system";
        translucency = false;
      };

      hotkeys = {
        "command-palette:open" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "P";
          }
        ];
      };

      cssSnippets = [
        {
          name = "readable";
          source = ./snippets/readable.css;
        }
      ];
    };
  };
}
