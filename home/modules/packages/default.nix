{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # == Applications ==
    # Password manager
    nordpass
    # Knowledge base and notes manager
    obsidian
    # Cloud-based messaging application
    telegram-desktop
    # Alternative Discord client
    vesktop
    # == IDEs ==
    # Database management tool
    dbeaver-bin
    mongodb-compass
    # API testing and development tool
    insomnia
    # Code editor
    vscode
  ];
}
