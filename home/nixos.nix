{
  inputs,
  ...
}:

{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
    inputs.spicetify-nix.homeManagerModules.default
    inputs.stylix.homeModules.stylix
    inputs.zen-browser.homeModules.twilight

    ./modules/fonts
    ./modules/packages

    # == Desktop ==
    ./modules/desktop/gtk
    ./modules/desktop/hyprcursor
    ./modules/desktop/hyprpaper
    ./modules/desktop/qt
    ./modules/desktop/rofi
    ./modules/desktop/waybar
    ./modules/desktop/wayland

    # == Programs ==
    ./modules/programs/bat
    ./modules/programs/bottom
    ./modules/programs/delta
    ./modules/programs/eza
    ./modules/programs/fastfetch
    ./modules/programs/fd
    ./modules/programs/fish
    ./modules/programs/fzf
    ./modules/programs/gh
    ./modules/programs/ghostty
    ./modules/programs/git
    ./modules/programs/helix
    ./modules/programs/insomnia
    ./modules/programs/jq
    ./modules/programs/k9s
    ./modules/programs/keychain
    ./modules/programs/lazydocker
    ./modules/programs/lazygit
    ./modules/programs/obsidian
    ./modules/programs/poetry
    ./modules/programs/ripgrep
    ./modules/programs/spicetify
    ./modules/programs/starship
    ./modules/programs/uv
    ./modules/programs/vesktop
    ./modules/programs/vscode
    ./modules/programs/yazi
    ./modules/programs/zed
    ./modules/programs/zellij
    ./modules/programs/zen
    ./modules/programs/zoxide

    # == Services ==

    # == Themes ==
    ./modules/themes/catppuccin
    ./modules/themes/stylix
    ./modules/themes/stylus
    ./modules/themes/wallpapers
  ];

  home.username = "pivoshenko";
  home.homeDirectory = "/home/pivoshenko";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  xdg.enable = true;
}
