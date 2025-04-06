{ config, pkgs, ... }:

{
  config.programs.firefox = {
    enable = true;
    profiles = {
      default = {
        name = "Noah";

        id = 0;
        isDefault = true;

        # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        #   enhancer-for-youtube # non-free
        # ];
        # search = {
        #   force = true;
        # };
      };
    };
  };
}
