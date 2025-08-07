{
  config,
  lib,
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    # == Applications ==
    # Password manager
    nordpass
    # Knowledge base and notes manager
    obsidian
    # Cloud-based messaging application
    telegram-desktop

    # == IDEs ==
    # Database management tool
    dbeaver-bin
    mongodb-compass
    # API testing and development tool
    insomnia
    # Code editor
    vscode

    # == Programming languages ==
    elixir
    erlang
    gcc
    gleam
    lua
    rustup

    # == Databases ==
    duckdb

    # == CLIs ==
    # Tool to interact with exercism.io
    exercism
    # Generator for LS_COLORS
    vivid

    # == LSPs ==
    # Nix code formatter
    nixfmt-rfc-style
  ];
}
