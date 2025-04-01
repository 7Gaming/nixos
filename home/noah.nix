{ pkgs, ... }@inputs: {
  imports = [ ./noah ];

  home = {
    username = "noah";
    homeDirectory = "/home/noah";
    stateVersion = "24.11";

    packages = with pkgs; [ nixfmt-rfc-style ];
  };
}
