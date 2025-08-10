{
  pkgs,
  ...
}:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-marketplace; [
      catppuccin.catppuccin-vsc
      charliermarsh.ruff
      dorzey.vscode-sqlfluff
      dustypomerleau.rust-syntax
      editorconfig.editorconfig
      github.copilot
      github.copilot-chat
      github.vscode-pull-request-github
      gleam.gleam
      jnoortheen.nix-ide
      matangover.mypy
      miguelsolorio.fluent-icons
      ms-python.python
      ms-python.vscode-pylance
      ms-python.vscode-python-envs
      ms-toolsai.jupyter
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      ms-windows-ai-studio.windows-ai-studio
      naumovs.color-highlight
      pkief.material-icon-theme
      robertostermann.inline-parameters-extended
      rust-lang.rust-analyzer
      samuelcolvin.jinjahtml
      tamasfe.even-better-toml
      yzhang.markdown-all-in-one
    ];

    userSettings = {
      # == Debug ==
      "debug.console.fontFamily" = "JetBrainsMono Nerd Font";
      "debug.console.fontSize" = 15;

      # == Editor ==
      "editor.acceptSuggestionOnEnter" = "on";
      "editor.accessibilitySupport" = "off";
      "editor.codeLens" = true;
      "editor.codeLensFontFamily" = "JetBrainsMono Nerd Font Mono";
      "editor.fontFamily" = "JetBrainsMono Nerd Font";
      "editor.fontLigatures" = true;
      "editor.fontSize" = 15;
      "editor.formatOnSave" = true;
      "editor.guides.bracketPairs" = true;
      "editor.inlayHints.fontFamily" = "JetBrainsMono Nerd Font Mono";
      "editor.inlineSuggest.enabled" = true;
      "editor.inlineSuggest.fontFamily" = "JetBrainsMono Nerd Font";
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
      "scm.inputFontSize" = 15;

      # == Search ==
      "search.defaultViewMode" = "tree";

      # == Security ==
      "security.workspace.trust.untrustedFiles" = "open";

      # == Terminal ==
      "terminal.explorerKind" = "external";
      "terminal.external.osxExec" = "iTerm.app";
      "terminal.integrated.allowMnemonics" = true;
      "terminal.integrated.cursorStyle" = "line";
      "terminal.integrated.defaultProfile.osx" = "fish";
      "terminal.integrated.drawBoldTextInBrightColors" = false;
      "terminal.integrated.fontFamily" = "JetBrainsMono Nerd Font";
      "terminal.integrated.fontSize" = 15;
      "terminal.integrated.fontWeight" = "normal";
      "terminal.integrated.gpuAcceleration" = "on";
      "terminal.integrated.inheritEnv" = true;
      "terminal.integrated.lineHeight" = 1.1;
      "terminal.integrated.profiles.osx" = {
        fish = {
          args = [
            "-l"
            "-i"
          ];
          path = "/opt/homebrew/bin/fish";
        };
      };

      # == Window ==
      "window.autoDetectColorScheme" = true;
      "window.commandCenter" = false;
      "window.customTitleBarVisibility" = "never";

      # == Workbench ==
      "workbench.colorCustomizations" = {
        "statusBar.foreground" = "#b7bdf8";
      };
      "workbench.editor.decorations.badges" = false;
      "workbench.editor.decorations.colors" = false;
      "workbench.editor.enablePreview" = false;
      "workbench.editor.labelFormat" = "short";
      "workbench.editor.pinnedTabSizing" = "compact";
      "workbench.editor.showIcons" = false;
      "workbench.editorAssociations" = {
        "*.ipynb" = "jupyter-notebook";
      };
      # "workbench.iconTheme" = "material-icon-theme";
      "workbench.layoutControl.enabled" = false;
      "workbench.productIconTheme" = "fluent-icons";
      "workbench.settings.editor" = "json";
      "workbench.sideBar.location" = "right";
      "workbench.startupEditor" = "none";
      "workbench.tips.enabled" = false;

      # == Zen Mode ==
      "zenMode.hideLineNumbers" = false;

      # == Extensions Catppuccin ==
      "catppuccin.accentColor" = "mauve";

      # == Extensions Git ==
      "git.autofetch" = true;
      "git.confirmSync" = false;
      "git.enableSmartCommit" = true;
      "git.ignoreLegacyWarning" = true;
      "git.openRepositoryInParentFolders" = "never";

      # == Extensions GitHub ==
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

      # == Extensions Jupyter ==
      "notebook.formatOnSave.enabled" = true;
      "notebook.lineNumbers" = "on";
      "notebook.output.textLineLimit" = 1000;

      # == Extensions Material Icon Theme ==
      "material-icon-theme.activeIconPack" = "angular_ngrx";
      "material-icon-theme.folders.theme" = "specific";
      "material-icon-theme.hidesExplorerArrows" = false;
      "material-icon-theme.saturation" = 1;

      # == Extensions MyPy ==
      "mypy.configFile" = "pyproject.toml";

      # == Extensions Python ==
      "python.analysis.autoFormatStrings" = true;
      "python.analysis.autoImportCompletions" = true;
      "python.analysis.completeFunctionParens" = true;
      "python.analysis.inlayHints.functionReturnTypes" = true;
      "python.analysis.inlayHints.pytestParameters" = true;
      "python.analysis.inlayHints.variableTypes" = true;
      "python.experiments.enabled" = false;
      "python.languageServer" = "Pylance";
      "python.testing.pytestEnabled" = true;

      # == Extensions SQLFluff ==
      "sqlfluff.config" = "pyproject.toml";
      "sqlfluff.env.useDotEnvFile" = true;

      # == Extensions TOML ==
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
