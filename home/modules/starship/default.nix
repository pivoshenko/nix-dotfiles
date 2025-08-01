{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      aws = {
        symbol = "󰸏 ";
        force_display = false;
      };

      azure = {
        symbol = " ";
        disabled = false;
      };

      buf = {
        symbol = " ";
      };

      bun = {
        symbol = " ";
      };

      c = {
        symbol = " ";
      };

      conda = {
        symbol = " ";
      };

      dart = {
        symbol = " ";
      };

      directory = {
        read_only = "  ";
        truncation_length = 4;
        style = "bold mauve";
      };

      docker_context = {
        symbol = "󰡨 ";
      };

      dotnet = {
        symbol = " ";
      };

      elixir = {
        symbol = " ";
      };

      elm = {
        symbol = " ";
      };

      erlang = {
        symbol = " ";
      };

      gcloud = {
        symbol = " ";
      };

      git_branch = {
        symbol = " ";
      };

      git_commit = {
        tag_symbol = "󰊢 ";
        tag_disabled = false;
      };

      git_metrics = {
        disabled = false;
      };

      golang = {
        symbol = " ";
      };

      gleam = {
        symbol = " ";
      };

      haskell = {
        symbol = " ";
      };

      hostname = {
        ssh_only = true;
        ssh_symbol = " ";
      };

      hg_branch = {
        symbol = " ";
      };

      java = {
        symbol = " ";
      };

      julia = {
        symbol = " ";
      };

      kotlin = {
        symbol = " ";
      };

      kubernetes = {
        symbol = "󱃾 ";
        disabled = false;
      };

      lua = {
        symbol = "󰢱 ";
      };

      memory_usage = {
        symbol = "󰍛 ";
        disabled = true;
      };

      meson = {
        symbol = " ";
      };

      nim = {
        symbol = " ";
      };

      nix_shell = {
        symbol = "󱄅 ";
      };

      nodejs = {
        symbol = "󰎙 ";
      };

      openstack = {
        symbol = " ";
      };

      package = {
        symbol = " ";
      };

      php = {
        symbol = " ";
      };

      python = {
        symbol = " ";
        style = "green bold";
      };

      rlang = {
        symbol = "󰟔 ";
      };

      ruby = {
        symbol = " ";
      };

      rust = {
        symbol = " ";
      };

      scala = {
        symbol = " ";
      };

      shell = {
        zsh_indicator = "󰊠";
        fish_indicator = "󰊠";
        style = "green bold";
        disabled = false;
      };

      status = {
        symbol = " ";
        success_symbol = "";
        not_executable_symbol = " ";
        map_symbol = false;
        disabled = false;
      };

      swift = {
        symbol = " ";
      };

      terraform = {
        symbol = "󱁢 ";
      };
    };
  };
}
