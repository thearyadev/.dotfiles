{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {

        homeConfigurations = {
        arya = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ "/home/arya/.dotfiles/machines/pc/home.nix" ];
        };
      };

    };
}
