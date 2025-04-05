{ config, pkgs, ... }:

{
  programs = {
    firefox = {
      enable = true;
      profiles = {
        noah = {
          # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          #   enhancer-for-youtube # non-free
          # ];
          search = {
            force = true;
          };
        };
      };
    };
  };
}
