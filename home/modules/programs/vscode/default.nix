{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.vscode = {
    enable = true;

    profiles.default.extensions = with pkgs.vscode-marketplace; [
      # == AI & Copilot ==
      github.copilot
      github.copilot-chat
      ms-windows-ai-studio.windows-ai-studio

      # == Development Tools ==
      editorconfig.editorconfig
      github.vscode-pull-request-github

      # == Language Support ==
      # Gleam
      gleam.gleam
      # Jinja/HTML
      samuelcolvin.jinjahtml
      # Markdown
      yzhang.markdown-all-in-one
      # Nix
      jnoortheen.nix-ide
      # Python
      charliermarsh.ruff
      matangover.mypy
      ms-python.python
      ms-python.vscode-pylance
      ms-python.vscode-python-envs
      ms-toolsai.jupyter
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      # Rust
      dustypomerleau.rust-syntax
      rust-lang.rust-analyzer
      # SQL
      dorzey.vscode-sqlfluff
      # TOML
      tamasfe.even-better-toml

      # == Themes & UI ==
      catppuccin.catppuccin-vsc
      miguelsolorio.fluent-icons
      pkief.material-icon-theme

      # == Utilities ==
      naumovs.color-highlight
      robertostermann.inline-parameters-extended
    ];

    profiles.default.userSettings = {
      # == Debug ==
      "debug.console.fontFamily" = config.stylix.fonts.monospace.name;
      "debug.console.fontSize" = 16;

      # == Editor ==
      "editor.acceptSuggestionOnEnter" = "on";
      "editor.accessibilitySupport" = "off";
      "editor.codeLens" = true;
      "editor.codeLensFontFamily" = config.stylix.fonts.monospace.name;
      "editor.fontFamily" = config.stylix.fonts.monospace.name;
      "editor.fontLigatures" = true;
      "editor.fontSize" = 16;
      "editor.formatOnSave" = true;
      "editor.guides.bracketPairs" = true;
      "editor.inlayHints.fontFamily" = config.stylix.fonts.monospace.name;
      "editor.inlineSuggest.enabled" = true;
      "editor.inlineSuggest.fontFamily" = config.stylix.fonts.monospace.name;
      "editor.inlineSuggest.showToolbar" = "always";
      "editor.lineNumbers" = "relative";
      "editor.minimap.enabled" = false;
      "editor.renderWhitespace" = "all";
      "editor.rulers" = [ 100 ];
      "editor.scrollbar.horizontal" = "hidden";
      "editor.scrollbar.vertical" = "hidden";
      "editor.scrollbar.verticalScrollbarSize" = 0;
      "editor.snippetSuggestions" = "top";
      "editor.suggest.preview" = true;
      "editor.suggest.showMethods" = true;
      "editor.suggestSelection" = "first";

      # == Explorer ==
      "explorer.confirmDelete" = false;
      "explorer.confirmDragAndDrop" = false;

      # == Files ==
      "files.associations" = {
        "*.pyi" = "python";
      };
      "files.autoSave" = "afterDelay";
      "files.exclude" = {
        "**/.DS_Store" = true;
        "**/.cache" = true;
        "**/.coverage" = true;
        "**/.git" = true;
        "**/.hg" = true;
        "**/.idea" = true;
        "**/.mypy_cache" = true;
        "**/.pytest_cache" = true;
        "**/.ropeproject" = true;
        "**/.ruff_cache" = true;
        "**/.svn" = true;
        "**/.todo.md" = true;
        "**/.venv" = true;
        "**/CVS" = true;
        "**/Thumbs.db" = true;
        "**/__pycache__" = true;
        "**/coverage.xml" = true;
        "**/docs/build" = true;
        "**/htmlcoverage" = true;
        "**/node_modules" = true;
        "**/*.py[co]" = true;
      };

      # == SCM ==
      "scm.inputFontSize" = 16;

      # == Search ==
      "search.defaultViewMode" = "tree";

      # == Security ==
      "security.workspace.trust.untrustedFiles" = "open";

      # == Terminal ==
      "terminal.explorerKind" = "external";
      "terminal.integrated.allowMnemonics" = true;
      "terminal.integrated.cursorStyle" = "line";
      "terminal.integrated.defaultProfile.osx" = "fish";
      "terminal.integrated.drawBoldTextInBrightColors" = false;
      "terminal.integrated.fontFamily" = config.stylix.fonts.monospace.name;
      "terminal.integrated.fontSize" = 16;
      "terminal.integrated.fontWeight" = "normal";
      "terminal.integrated.gpuAcceleration" = "on";
      "terminal.integrated.inheritEnv" = true;
      "terminal.integrated.lineHeight" = 1.1;

      # == Window ==
      "window.autoDetectColorScheme" = true;
      "window.commandCenter" = false;
      "window.customTitleBarVisibility" = "always";
      "window.titleBarStyle" = "custom";

      # == Workbench ==
      "workbench.colorTheme" = lib.mkForce "Catppuccin ${
        lib.strings.toUpper (lib.substring 0 1 config.catppuccin.flavor)
      }${lib.substring 1 (-1) config.catppuccin.flavor}";
      "workbench.editor.decorations.badges" = false;
      "workbench.editor.decorations.colors" = false;
      "workbench.editor.enablePreview" = false;
      "workbench.editor.labelFormat" = "short";
      "workbench.editor.pinnedTabSizing" = "compact";
      "workbench.editor.showIcons" = false;
      "workbench.editorAssociations" = {
        "*.ipynb" = "jupyter-notebook";
      };
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.layoutControl.enabled" = false;
      "workbench.preferredDarkColorTheme" = lib.mkForce "Catppuccin ${
        lib.strings.toUpper (lib.substring 0 1 config.catppuccin.flavor)
      }${lib.substring 1 (-1) config.catppuccin.flavor}";
      "workbench.productIconTheme" = "fluent-icons";
      "workbench.settings.editor" = "json";
      "workbench.sideBar.location" = "right";
      "workbench.startupEditor" = "none";
      "workbench.tips.enabled" = false;

      # == Zen Mode ==
      "zenMode.hideLineNumbers" = false;

      # == Extensions - Git ==
      "git.autofetch" = true;
      "git.confirmSync" = false;
      "git.enableSmartCommit" = true;
      "git.ignoreLegacyWarning" = true;
      "git.openRepositoryInParentFolders" = "never";

      # == Extensions - GitHub ==
      "github.copilot.chat.commitMessageGeneration.instructions" = [
        { text = "Use conventional commit message format. Keep the first line under 50 characters."; }
      ];
      "github.copilot.editor.enableCodeActions" = true;
      "github.copilot.enable" = {
        "*" = true;
        plaintext = true;
        markdown = true;
      };
      "github.copilot.nextEditSuggestions.enabled" = true;
      "github.gitAuthentication" = false;
      "github.gitProtocol" = "ssh";
      "githubPullRequests.createOnPublishBranch" = "never";
      "githubPullRequests.fileListLayout" = "tree";

      # == Extensions - Jupyter ==
      "notebook.formatOnSave.enabled" = true;
      "notebook.lineNumbers" = "on";
      "notebook.output.textLineLimit" = 1000;

      # == Extensions - Material Icon Theme ==
      "material-icon-theme.activeIconPack" = "angular_ngrx";
      "material-icon-theme.folders.theme" = "specific";
      "material-icon-theme.hidesExplorerArrows" = false;
      "material-icon-theme.saturation" = 1;

      # == Extensions - MyPy ==
      "mypy.configFile" = "pyproject.toml";

      # == Extensions - Python ==
      "python.analysis.autoFormatStrings" = true;
      "python.analysis.autoImportCompletions" = true;
      "python.analysis.completeFunctionParens" = true;
      "python.analysis.inlayHints.functionReturnTypes" = true;
      "python.analysis.inlayHints.pytestParameters" = true;
      "python.analysis.inlayHints.variableTypes" = true;
      "python.experiments.enabled" = false;
      "python.languageServer" = "Pylance";
      "python.testing.pytestEnabled" = true;

      # == Extensions - SQLFluff ==
      "sqlfluff.config" = "pyproject.toml";
      "sqlfluff.env.useDotEnvFile" = true;

      # == Extensions - TOML ==
      "evenBetterToml.formatter.allowedBlankLines" = 1;
      "evenBetterToml.formatter.arrayAutoCollapse" = true;
      "evenBetterToml.formatter.arrayTrailingComma" = false;
      "evenBetterToml.formatter.columnWidth" = 120;
      "evenBetterToml.formatter.reorderArrays" = false;
      "evenBetterToml.formatter.reorderKeys" = false;

      # == Formatters ==
      "[jinja-sql]" = {
        "editor.defaultFormatter" = "dorzey.vscode-sqlfluff";
      };
      "[markdown]" = {
        "editor.defaultFormatter" = "yzhang.markdown-all-in-one";
      };
      "[python]" = {
        "editor.defaultFormatter" = "charliermarsh.ruff";
      };
      "[sql]" = {
        "editor.defaultFormatter" = "dorzey.vscode-sqlfluff";
      };
      "[toml]" = {
        "editor.defaultFormatter" = "tamasfe.even-better-toml";
      };
    };
  };
}
