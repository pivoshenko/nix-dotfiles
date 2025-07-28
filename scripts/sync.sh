#!/usr/bin/env bash

sudo rm -rf /etc/nixos/home
sudo cp -r /home/pivoshenko/Development/core/nix-dotfiles/home /etc/nixos/

sudo rm -rf /etc/nixos/hosts
sudo cp -r /home/pivoshenko/Development/core/nix-dotfiles/hosts /etc/nixos/

sudo rm -rf /etc/nixos/nixos
sudo cp -r /home/pivoshenko/Development/core/nix-dotfiles/nixos /etc/nixos/

sudo rm -rf /etc/nixos/flake.nix
sudo cp -r /home/pivoshenko/Development/core/nix-dotfiles/flake.nix /etc/nixos/
