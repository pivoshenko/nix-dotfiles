{ config, lib, pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "catppuccin"
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
      "material-icon-theme"
      "nix"
      "ruff"
      "sql"
      "toml"
    ];

    userSettings = {
      # == General ==
      auto_update = true;
      base_keymap = "VSCode";
      vim_mode = true;

      # == Fonts ==
      buffer_font_family = config.stylix.fonts.monospace.name;
      buffer_font_size = 16;
      ui_font_family = config.stylix.fonts.monospace.name;
      ui_font_size = 16;

      # == Editor ==
      relative_line_numbers = true;
      show_whitespaces = "all";
      soft_wrap = "editor_width";

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

      # == AI ==
      edit_predictions = {
        mode = "eager";
        copilot = {
          proxy = null;
          proxy_no_verify = null;
        };
        enabled_in_text_threads = false;
      };

      features = {
        edit_prediction_provider = "zed";
      };

      # == File Types ==
      file_types = {
        SQL = [ "*.sql.j2" ];
        TOML = [ "poetry.lock" ];
      };

      # == Telemetry ==
      telemetry = {
        diagnostics = false;
        metrics = false;
      };
    };
  };
}
