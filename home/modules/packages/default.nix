{
  config,
  lib,
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    # == Desktop Environment ==
    # Classic cursor theme with a flying style
    volantes-cursors

    # == Applications ==
    # Password manager
    nordpass
    # Cloud-based messaging application
    telegram-desktop

    # == IDEs ==
    # Database management tool
    dbeaver-bin
    mongodb-compass
    # API testing and development tool
    insomnia
    # Code editor
    vscode # TODO Replace with programs.vscode

    # == Programming languages ==
    elixir
    erlang
    gcc
    gleam
    lua
    rustup

    # == Databases ==
    duckdb

    # == Orchestration ==
    minikube

    # == CLIs ==
    # Tool to interact with exercism.io
    exercism
    # Graph visualization tools
    graphviz
    # Tool for generating terminal GIFs with code
    vhs
    # Generator for LS_COLORS
    vivid # TODO Replace with programs.vivid

    # == LSPs ==
    # Language server for Markdown
    marksman
    # TOML toolkit written in Rust
    taplo
    # Nix code formatter
    nixfmt-rfc-style
    # SQL linter and auto-formatter
    sqlfluff
    # Language Server for YAML
    yaml-language-server
  ];
}
