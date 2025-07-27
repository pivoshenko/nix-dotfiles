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

    shellAliases = { };

    interactiveShellInit = ''
      set fish_greeting ""

      starship init fish | source

      # == Exports ==
      set -Ux XDG_CONFIG_HOME $HOME/.config
      set -Ux EDITOR hx
      set -Ux VISUAL $EDITOR
      # Get the current terminal and set it for GPG
      set -Ux GPG_TTY (tty)

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
    '';
  };
}
