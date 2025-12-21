{
  description = "alpha - dots";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";
  };

  outputs =
    {
      nixpkgs,
      nixpkgs-unstable,
      nur,
      home-manager,
      nixos-hardware,
      catppuccin,
      ...
    }:
    let
      username = "katalysatorn";
      pkgs = import nixpkgs {
        config.allowUnfree = true;
      };
      unstable = import nixpkgs-unstable;
      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        alpha = nixpkgs.lib.nixosSystem {
          modules = [
            ./hosts/alpha/configuration.nix
            nixos-hardware.nixosModules.asus-zephyrus-ga402x-nvidia

            nur.modules.nixos.default

            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.katalysatorn = {
                  imports = [
                    ./users/katalysatorn
                    catppuccin.homeModules.catppuccin
                  ];
                };
              };
            }
          ];
        };
      };
    };
}
