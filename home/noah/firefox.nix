{ config, pkgs, ... }:

{
  config.programs.firefox = {
    enable = true;
    profiles."noah" = {
      id = 0;
      isDefault = true;
      name = "Noah";
      # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      #   enhancer-for-youtube # non-free
      # ];
      # search = {
      #   force = true;
      # };
    };
  };
}
