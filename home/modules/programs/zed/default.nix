{
  config,
  ...
}:

{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "catppuccin"
      "material-icon-theme"
      "docker-compose"
      "dockerfile"
      "env"
      "git-firefly"
      "gleam"
      "html"
      "ini"
      "kdl"
      "log"
      "lua"
      "nix"
      "ruff"
      "sql"
      "toml"
    ];

    userSettings = {
      icon_theme = "Material Icon Theme";

      # == General ==
      auto_update = true;
      base_keymap = "VSCode";
      vim_mode = true;

      # == AI ==
      edit_predictions = {
        copilot = {
          proxy = null;
          proxy_no_verify = null;
        };
        enabled_in_text_threads = false;
        mode = "eager";
      };

      features = {
        edit_prediction_provider = "zed";
      };

      # == Editor ==
      autosave = {
        after_delay = {
          milliseconds = 500;
        };
      };

      preview_tabs = {
        enable_preview_from_code_navigation = false;
        enable_preview_from_file_finder = false;
        enabled = false;
      };

      relative_line_numbers = true;
      show_whitespaces = "all";
      soft_wrap = "editor_width";

      tabs = {
        activate_on_close = "history";
        close_position = "right";
        file_icons = false;
        git_status = true;
      };

      toolbar = {
        breadcrumbs = true;
        quick_actions = true;
        selections_menu = true;
      };

      # == File types ==
      file_types = {
        SQL = [ "*.sql.j2" ];
        TOML = [
          "poetry.lock"
          "uv.lock"
        ];
      };

      # == Fonts ==
      buffer_font_family = config.stylix.fonts.monospace.name;
      buffer_font_size = 16;
      ui_font_family = config.stylix.fonts.monospace.name;
      ui_font_size = 16;

      # == Panels ==
      agent = {
        always_allow_tool_actions = true;
        default_profile = "ask";
        dock = "left";
      };

      chat_panel = {
        button = "never";
        dock = "left";
      };

      collaboration_panel = {
        button = false;
        dock = "left";
      };

      git_panel = {
        button = true;
        dock = "left";
      };

      notification_panel = {
        button = false;
        dock = "left";
      };

      outline_panel = {
        dock = "right";
      };

      project_panel = {
        dock = "right";
      };

      terminal = {
        button = false;
      };

      # == Telemetry ==
      telemetry = {
        diagnostics = false;
        metrics = false;
      };
    };
  };
}
