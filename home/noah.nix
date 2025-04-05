{ inputs, pkgs, ... }:
{
  nixpkgs = {
    overlays = [
      inputs.nur.overlay
    ];
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "noah";
    homeDirectory = "/home/noah";
    stateVersion = "24.11";

    packages = with pkgs; [ nixfmt-rfc-style ];
  };

  imports = [ ./noah ];
}
