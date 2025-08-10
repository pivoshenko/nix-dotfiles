{
  lib,
  pkgs,
  ...
}:

{
  home.activation.insomniaPlugins = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    $DRY_RUN_CMD mkdir -p "$HOME/.config/Insomnia/plugins"

    # Check if the plugin already exists and remove it if it does
    if [ -d "$HOME/.config/Insomnia/plugins/insomnia-plugin-catppuccin" ]; then
      $VERBOSE_ECHO "Removing existing Insomnia Catppuccin plugin..."
      $DRY_RUN_CMD rm -rf "$HOME/.config/Insomnia/plugins/insomnia-plugin-catppuccin"
    fi

    # Clone the plugin repository using HTTPS (more reliable during build)
    $VERBOSE_ECHO "Installing Insomnia Catppuccin plugin..."
    $DRY_RUN_CMD ${pkgs.git}/bin/git clone https://github.com/catppuccin/insomnia.git "$HOME/.config/Insomnia/plugins/insomnia-plugin-catppuccin"

    # Install npm dependencies
    if [ -d "$HOME/.config/Insomnia/plugins/insomnia-plugin-catppuccin" ]; then
      $VERBOSE_ECHO "Installing plugin dependencies..."
      cd "$HOME/.config/Insomnia/plugins/insomnia-plugin-catppuccin"
      $DRY_RUN_CMD ${pkgs.nodejs}/bin/npm install
    fi
  '';
}
