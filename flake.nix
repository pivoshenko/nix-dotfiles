{
  description = "pivoshenko's NixOS and nix-darwin configurations";

  inputs = {
    catppuccin = {
      url = "github:catppuccin/nix";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixpkgs-stable = {
      url = "github:NixOS/nixpkgs/nixos-25.05";
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      catppuccin,
      home-manager,
      nixpkgs,
      nixpkgs-stable,
      nix-vscode-extensions,
      self,
      spicetify-nix,
      stylix,
      zen-browser,
      ...
    }@inputs:
    {
      # Development shell
      devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        buildInputs = with nixpkgs.legacyPackages.x86_64-linux; [
          git
          nil
          nixfmt-rfc-style
        ];
      };

      # NixOS
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./hosts/nixos/default.nix
            catppuccin.nixosModules.catppuccin
            home-manager.nixosModules.home-manager
            stylix.nixosModules.stylix
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.pivoshenko = import ./home/nixos.nix;
              home-manager.extraSpecialArgs = {
                inherit inputs;
              };
              home-manager.backupFileExtension = "backup";
            }
            {
              nixpkgs.overlays = [
                nix-vscode-extensions.overlays.default
              ];
            }
          ];
        };
      };
    };
}
