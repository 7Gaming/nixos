{
  description = "Noah's NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations.nixos = lib.nixosSystem {
      inherit system;
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.noah = import ./home/noah.nix;
        }
      ];
    };
  };
}
