{
  description = "Noah's NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur.url = "github:nix-community/nur";
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nur,
      ...
    }@inputs:
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
            home-manager.extraSpecialArgs = { inherit nur; };
            home-manager.users.noah = import ./home/noah.nix;
          }
        ];
      };
    };
}
