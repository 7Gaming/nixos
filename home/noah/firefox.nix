{ config, pkgs, ... }:

let
  lock-false = {
    Value = false;
    Status = "locked";
  };
  lock-true = {
    Value = true;
    Status = "locked";
  };
in
{
  programs = {
    firefox = {
      enable = true;
      package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
        extraPolicies = {
          DisableTelemetry = true;
          DisablePocket = true;
          DisableFirefoxScreenshots = true;

          # EXTENSIONS
          ExtensionSettings = {
            "*".installation_mode = "blocked"; # blocks all addons except the ones specified below

            # uBlock Origin
            "uBlock0@raymondhill.net" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
              installation_mode = "force_installed";
              private_browsing = true;
            };

            # Sponsor Block
            "sponsorBlocker@ajay.app" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi";
              installation_mode = "force_installed";
              private_browsing = true;
            };
          };

          # PREFERENCES
          Preferences = {
            # "browser.newtabpage.activity-stream.feeds.section.highlights" = false;
            # "browser.startup.homepage" = "https://nixos.org";
            # "browser.newtabpage.pinned" = [
            #   {
            #     title = "NixOS";
            #     url = "https://nixos.org";
            #   }
            # ];
          };
        };
      };
    };
  };
}
