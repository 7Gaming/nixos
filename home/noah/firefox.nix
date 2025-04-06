{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    # policies = {
    #   DisableFirefoxStudies = true;
    #   DisablePocket = true;
    #   DisableSafeMode = true;
    #   DisableSetDesktopBackground = true;
    #   DisableTelemetry = true;
    #   DontCheckDefaultBrowser = true;
    #   HardwareAcceleration = true;
    # };

    profiles = {
      default = {
        name = "Noah";

        id = 0;
        isDefault = true;

        extensions = {
          # https://nur.nix-community.org/repos/rycee/
          packages = with pkgs.nur.repos.rycee.firefox-addons; [
            sponsorblock
            ublock-origin
          ];
        };

        # search = {
        #   force = true;
        # };
      };
    };
  };
}
