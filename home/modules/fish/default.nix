{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    generateCompletions = true;

    plugins = [
      {
        name = "z";
        src = pkgs.fishPlugins.z;
      }
      {
        name = "fzf";
        src = pkgs.fishPlugins.fzf;
      }
      {
        name = "fifc";
        src = pkgs.fishPlugins.fifc;
      }
    ];

    shellAliases = {
      cat = "bat";
      ls = "eza";
      ld = "lazydocker";
      lg = "lazygit";
      zj = "zellij";
    };

    interactiveShellInit = ''
      # == Exports ==
      set -Ux XDG_CONFIG_HOME $HOME/.config
      set -Ux EDITOR hx
      set -Ux VISUAL $EDITOR
      # Get the current terminal and set it for GPG
      set -Ux GPG_TTY (tty)
      # Update default colors
      set -Ux LS_COLORS $(vivid generate catppuccin-macchiato)

      # == Functions ==

      # Delete backup files
      function bakclean
          fd -H -e ".dotdropbak" -t f -x rm
          fd -H -e ".bak" -t f -x rm
      end

      # Iterate over sub-directories and pull `git` repositories
      function rgp
          find . -name ".git" -type d | sed 's/\/\.git//' | xargs -P10 -I{} sh -c 'git -C {} fetch --all && git -C {} pull'
      end

      # Reload `fish` configuration
      function fish
        source ~/.config/fish/config.fish
      end

      # Display system information on shell startup
      function fish_greeting
          fastfetch
      end

      # == Vim Mode ==
      function fish_user_key_bindings
          # Execute this once per mode that `emacs` bindings should be used in
          fish_default_key_bindings -M insert

          # Then execute the `vi` bindings so they take precedence when there's a conflict
          # Without `--no-erase`, `fish_vi_key_bindings` will default to
          # Resetting all bindings
          # The argument specifies the initial mode (`insert`, `default` or `visual`)
          fish_vi_key_bindings --no-erase insert
      end

      # Emulates `vim`'s cursor shape behavior
      set fish_cursor_default block
      # Set the insert mode cursor to a line
      set fish_cursor_insert line
      # Set the replace mode cursors to an underscore
      set fish_cursor_replace_one underscore
      set fish_cursor_replace underscore
      # Set the external cursor to a line. The external cursor appears when a command is started
      # The cursor shape takes the value of `fish_cursor_default` when `fish_cursor_external` is not specified
      set fish_cursor_external line
      # The following variable can be used to configure cursor shape in
      # Visual mode, but due to `fish_cursor_default`, is redundant here
      set fish_cursor_visual block
    '';
  };
}
