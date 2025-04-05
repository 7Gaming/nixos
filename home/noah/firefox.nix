{ config, pkgs, ... }:

{
  programs = {
    firefox = {
      enable = true;
      # profiles = {
      #   default = {
      #     # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      #     #   enhancer-for-youtube # non-free
      #     # ];
      #   };
      # };
    };
  };
}
