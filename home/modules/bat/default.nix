{ config, lib, pkgs, ... }:

{
  programs.bat = {
    enable = true;

    config = {
      decorations = "never";
      pager = "never";
      plain = true;
    };
  };
}
