{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    # == Applications ==
    nordpass
    telegram-desktop

    # == CLIs ==
    exercism
    graphviz
    vhs
    vivid

    # == Databases ==
    duckdb

    # == Desktop Environment ==

    # == IDEs ==
    dbeaver-bin
    insomnia
    mongodb-compass

    # == LSPs ==
    marksman
    mypy
    nil
    nixd
    nixfmt-rfc-style
    sqlfluff
    taplo
    yaml-language-server

    # == Orchestration ==
    minikube

    # == Programming languages ==
    elixir
    erlang
    gcc
    gleam
    lua
    nodejs
    rustup
  ];
}
