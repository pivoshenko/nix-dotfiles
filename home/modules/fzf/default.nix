{ config, lib, pkgs, ... }:

# TODO Resolve issue with invalid border colors
{
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;

    defaultOptions = [
      "--height 30% -1"
      "--select-1"
      "--reverse"
      "--preview-window='right:wrap'"
      "--inline-info"
      "--bind=tab:down,shift-tab:up"
    ];
  };
}
